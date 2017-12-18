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

public partial class supplier : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    Class1 cl = new Class1();
    string id;
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

            SqlCommand cmd = new SqlCommand("select * from tbl_supplier", con);
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
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_supplier";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@s_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@name", name.Text.ToString());
        cmd.Parameters.AddWithValue("@contact", contact.Text.ToString());
        cmd.Parameters.AddWithValue("@address", address.Text.ToString());
        cmd.Parameters.AddWithValue("@mail_id", mail_id.Text.ToString());
        cmd.Parameters.AddWithValue("@gst_no", gst_no.Text.ToString());
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
        name.Text = "";
        contact.Text = "";
        address.Text = "";
        mail_id.Text = "";
        gst_no.Text = "";
    }
    public void Update()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_supplier";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@s_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@name", name.Text.ToString());
        cmd.Parameters.AddWithValue("@contact", contact.Text.ToString());
        cmd.Parameters.AddWithValue("@address", address.Text.ToString());
        cmd.Parameters.AddWithValue("@mail_id", mail_id.Text.ToString());
        cmd.Parameters.AddWithValue("@gst_no", gst_no.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        BindListView();
        btn_submit.Text = "insert";
        clear();
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();

            if (e.CommandName == "CmdEdit")
            {


                btn_submit.Text = "update";
                string str1 = "select * from tbl_supplier where s_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["s_id"].ToString();
                    name.Text = dr["name"].ToString();
                    contact.Text = dr["contact"].ToString();
                    address.Text = dr["address"].ToString();
                    mail_id.Text = dr["mail_id"].ToString();
                    gst_no.Text = dr["gst_no"].ToString();
                }

            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_supplier where s_id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                BindListView();
            }
        }
        catch { }
    }

}