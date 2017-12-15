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

public partial class Brandproduct : System.Web.UI.Page 
{
    string conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    int id;
    string i;
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

            SqlCommand cmd = new SqlCommand("select * from tbl_brand", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            lvCustomers.DataSource = dt;
            lvCustomers.DataBind();
        }
        catch { }
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (btnSub.Text == "insert")
        {
            submit();
        }
        if (btnSub.Text == "update")
        {
            update();
        }

       
    }
    private void submit()
    {
        
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_Brand";
        cmd.Parameters.AddWithValue("@action", btnSub.Text.ToLower());
        cmd.Parameters.AddWithValue("@B_id", 0);
        cmd.Parameters.AddWithValue("@B_Name", txtBrandname.Text.ToString());
        cmd.Parameters.AddWithValue("@B_Code", txtcode.Text.ToString());
        cmd.Parameters.AddWithValue("@B_Status","1");
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        clear();
        BindListView();
    }
    private void update()
    {string Bid =Session["Id"].ToString();
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_Brand";
        cmd.Parameters.AddWithValue("@action", btnSub.Text.ToLower());
        cmd.Parameters.AddWithValue("@B_id", Bid.ToString());
        cmd.Parameters.AddWithValue("@B_Name", txtBrandname.Text.ToString());
        cmd.Parameters.AddWithValue("@B_Code", txtcode.Text.ToString());
        cmd.Parameters.AddWithValue("@B_Status", "1");
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        clear();
        BindListView();
        btnSub.Text = "insert";
    }
    private void clear()
    {
        txtBrandname.Text = "";
        txtcode.Text = "";
        
    
    }

    protected void lvCustomers_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        
        try
        {
            id = Convert.ToInt32(e.CommandArgument);
            
            
            if (e.CommandName == "CmdEdit")
            {
                btnSub.Text = "update";
                SqlConnection con = new SqlConnection(conn);
                string sql = "select * from tbl_brand where B_id='" + e.CommandArgument + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtBrandname.Text = dr["B_Name"].ToString();
                    txtcode.Text = dr["B_Code"].ToString();
                  

                } 

            }
            if (e.CommandName == "CmdDelete")
            {
                SqlConnection con = new SqlConnection(conn);
                 id = Convert.ToInt32(e.CommandArgument);
                SqlCommand cmd = new SqlCommand("delete from tbl_brand where B_id=" + id, con);
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
   