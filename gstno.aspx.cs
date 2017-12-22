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
public partial class gstno : System.Web.UI.Page
{
    String conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    Class1 cl = new Class1();
    string id;
    string a, b, c;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string mystring = txt_gst.Text.ToString();
         string a = mystring.Substring(0, 2);
         string b = mystring.Substring(2, 10);
         string c = mystring.Substring(12, 3);
         hdn1.Value = a.ToString();
         hdn2.Value = b.ToString();
         hdn3.Value = c.ToString();
        if (btn_submit.Text == "insert")
        {
            submit();
        }
    }
    private void BindListView()
    {
        try
        {
            SqlConnection con = new SqlConnection(conn);
            if (con.State == 0)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from tbl_gst_no", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        catch
        {
        }
    }
    public void submit()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_gst_no";
 
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@id", hdn0.Value.ToString());
        cmd.Parameters.AddWithValue("@code", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@gst_no", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@random", hdn3.Value.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        clear();
    }
    private void clear()
    {
        txt_gst.Text = "";
     
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        
    }
}