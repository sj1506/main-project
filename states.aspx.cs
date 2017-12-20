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

public partial class states : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    Class1 cl = new Class1();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    string id = "0";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
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
            SqlCommand cmd = new SqlCommand("select * from tbl_states", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        catch { }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();

            if (e.CommandName == "CmdEdit")
            {

                // Response.Redirect("CompnayName.aspx?Id=" + Convert.ToInt32(e.CommandArgument));
                btn_submit.Text = "update";
                string str1 = "select * from tbl_states where id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["id"].ToString();
                    txt_statename.Text = dr["name"].ToString();

                }

            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_states where id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                BindListView();
            }
            //btnSub.Text = "insert";
        }
        catch { }
    }


    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (btn_submit.Text == "insert")
        {
            submit();
        }
        if (btn_submit.Text == "update")
        {
            Update();
        }
    }
    public void submit()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand com = new SqlCommand();
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "sp_states";
        com.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        com.Parameters.AddWithValue("@id", 0);
        com.Parameters.AddWithValue("@name", txt_statename.Text.ToString());
        com.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        com.Parameters["@result"].Direction = ParameterDirection.Output;
        com.Connection = con;
        con.Open();
        com.ExecuteNonQuery();
        lbl_msg.Text = com.Parameters["@result"].Value.ToString();
        clear();
        BindListView();
    }
    public void Update()
    {
        try
        {

            SqlConnection con = new SqlConnection(conn);
            SqlCommand com = new SqlCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "sp_states";
            com.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
            com.Parameters.AddWithValue("@id", hdn1.Value.ToString());
            com.Parameters.AddWithValue("@name", txt_statename.Text.ToString());
            com.Parameters.Add("@result", SqlDbType.NVarChar, 500);
            com.Parameters["@result"].Direction = ParameterDirection.Output;
            com.Connection = con;
            con.Open();
            com.ExecuteNonQuery();
            lbl_msg.Text = com.Parameters["@result"].Value.ToString();

            BindListView();
            btn_submit.Text = "insert";
            clear();
        }
        catch { }
    }
    private void clear()
    {
        txt_statename.Text = "";

    }
}