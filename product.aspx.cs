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

public partial class product : System.Web.UI.Page
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
            string qry = "select B_id, B_Name from tbl_brand";
            cl.filldropdown(qry, "B_id", "B_Name", ddl_Brandname);
            string qury = "select unit_id, unit_Name from tbl_unit ";
            cl.filldropdown(qury, "unit_id", "unit_Name", ddl_unit);
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

            SqlCommand cmd = new SqlCommand("select * from tbl_product", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
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
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_product";
        cmd.Parameters.AddWithValue("@action",btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@p_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@p_title",p_title.Text.ToString());
        cmd.Parameters.AddWithValue("@brand", ddl_Brandname.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@minimum_quantity",min_qty.Text.ToString());
        cmd.Parameters.AddWithValue("@unit",ddl_unit.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@bar_code",bar_code.Text.ToString());
        cmd.Parameters.AddWithValue("qty_in_stock",txt_qtyinstock.Text.ToString());
        cmd.Parameters.Add("@result",SqlDbType.NVarChar,500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        clear();
    }
    private void clear()
    {
        p_title.Text = "";
        ddl_Brandname.SelectedIndex = -1;
        min_qty.Text = "";
        ddl_unit.SelectedIndex = -1;
        bar_code.Text = "";
        txt_qtyinstock.Text = "";
        txt_qtyinstock.Text = "";
    }
    public void Update()
    {
        try
        {
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_product";
            cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
            cmd.Parameters.AddWithValue("@p_id", hdn1.Value.ToString());
            cmd.Parameters.AddWithValue("@p_title", p_title.Text.ToString());
            cmd.Parameters.AddWithValue("@brand", ddl_Brandname.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@minimum_quantity", min_qty.Text.ToString());
            cmd.Parameters.AddWithValue("@unit", ddl_unit.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@bar_code", bar_code.Text.ToString());
            cmd.Parameters.AddWithValue("qty_in_stock", txt_qtyinstock.Text.ToString());
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
        catch
        { }
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
                string str1 = "select * from tbl_product where p_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["p_id"].ToString();
                    p_title.Text = dr["p_title"].ToString();
                    ddl_Brandname.SelectedValue = dr["brand"].ToString();
                    min_qty.Text = dr["minimum_quantity"].ToString();
                    ddl_unit.SelectedValue = dr["unit"].ToString();
                    bar_code.Text = dr["bar_code"].ToString();
                    txt_qtyinstock.Text = dr["qty_in_stock"].ToString();
                }

            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_product where p_id=" + id, con);
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