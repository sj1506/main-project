using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class change_password : System.Web.UI.Page
{
    String conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    Class1 cl = new Class1();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_change_password";
        cmd.Parameters.AddWithValue("@mobile_no", mobile_no.Text.ToString());
        cmd.Parameters.AddWithValue("@password", password.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.VarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;

        cmd.Connection = con;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        cmd.ExecuteNonQuery();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+cmd.Parameters["@result"].Value.ToString()+"')", true);
        clear();
    }
    private void clear()
    {
        mobile_no.Text = "";
        password.Text = "";
        confirm_password.Text = "";
    }
}