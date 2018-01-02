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
public partial class transaction_sell : System.Web.UI.Page
{

    String conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    Class1 cl = new Class1();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //    BindListView();
            BindListView1();
            string qry = "select p_id, p_title from tbl_product";
            cl.filldropdown(qry, "p_id", "p_title", ddl_product);
            string qy = "select cs_id , name from tbl_customers";
            cl.filldropdown(qy, "cs_id", "name", ddl_customer);
            string state = "select id , name from tbl_states";
            cl.filldropdown(state, "id", "name", ddl_state);
            ddl_state.SelectedIndex = 29;

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
    private void BindListView()
    {
        try
        {
            SqlConnection con = new SqlConnection(conn);
            if (con.State == 0)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from tbl_transaction_sell", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            //ListView1.DataSource = dt;
            //ListView1.DataBind();
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
        cmd.CommandText = "sp_transaction_sell";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@ts_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@customer_id",ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
        cmd.Parameters.AddWithValue("@state", ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_no.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", igst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
        cmd.Parameters.AddWithValue("@grand_total_with_tax", gt_with_tax.Text.ToString());
        cmd.Parameters.AddWithValue("@discount", discount.Text.ToString());
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
        ddl_state.SelectedIndex = -1;
        ddl_customer.SelectedIndex = -1;
        cs_name.Text = "";
        b_no.Text = "";
        total_cost.Text = "";
        ugst.Text = "";
        sgst.Text = "";
        cgst.Text = "";
        igst.Text = "";
        date.Text = "";
        gt_with_tax.Text = "";
        discount.Text = "";
    }
    public void Update()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_transaction_sell";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@ts_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@customer_id", ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
        cmd.Parameters.AddWithValue("@state", ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_no.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", igst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
        cmd.Parameters.AddWithValue("@grand_total_with_tax", gt_with_tax.Text.ToString());
        cmd.Parameters.AddWithValue("@discount", discount.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        // BindListView();
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
                string str1 = "select * from tbl_transaction_sell where ts_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["ts_id"].ToString();
                    ddl_customer.SelectedValue = dr["customer_id"].ToString();
                    cs_name.Text = dr["customer_name"].ToString();
                    b_no.Text = dr["bill_no"].ToString();
                    total_cost.Text = dr["total_cost"].ToString();
                    cgst.Text = dr["cgst"].ToString();
                    sgst.Text = dr["sgst"].ToString();
                    igst.Text = dr["igst"].ToString();
                    ugst.Text = dr["ugst"].ToString();
                    date.Text = dr["date"].ToString();
                    gt_with_tax.Text = dr["gt_with_tax"].ToString();
                    discount.Text = dr["discount"].ToString();
                }
            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_transaction_sell where ts_id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                // BindListView();
            }
        }
        catch { }
    }
    protected void btn_addmore_Click(object sender, EventArgs e)
    {
        if (btn_addmore.Text == "Add More")
        {
            submit1();
        }
        if (btn_addmore.Text == "update")
        {
            Update1();
        }

    }
    private void BindListView1()
    {
        try
        {
            SqlConnection con = new SqlConnection(conn);
            if (con.State == 0)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from tbl_temp_transaction_sell_detail", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            ListView2.DataSource = dt;
            ListView2.DataBind();
        }
        catch
        {
        }
    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();

            if (e.CommandName == "CmdEdit")
            {
                btn_addmore.Text = "update";
                string str1 = "select * from tbl_temp_transaction_sell_detail where id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn2.Value = dr["id"].ToString();
                    b_no.Text = dr["bill_no"].ToString();
                    ts_id.Text = dr["ts_id"].ToString();
                    ddl_product.SelectedValue = dr["p_id"].ToString();
                    qty.Text = dr["qty"].ToString();
                    cost_per_unit.Text = dr["cost_per_unit"].ToString();
                    total.Text = dr["total"].ToString();
                    txt_cgst.Text = dr["cgst"].ToString();
                    txt_ugst.Text = dr["ugst"].ToString();
                    txt_igst.Text = dr["igst"].ToString();
                    txt_sgst.Text = dr["sgst"].ToString();
                }
            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_temp_transaction_sell_detail where id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                BindListView1();
            }
        }
        catch { }
    }

    public void submit1()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_temp_transaction_sell_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_no.Text.ToString());
        cmd.Parameters.AddWithValue("@ts_id", ts_id.Text.ToString());
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@cost_per_unit", cost_per_unit.Text.ToString());
        cmd.Parameters.AddWithValue("@total", total.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        clear1();
    }
    private void clear1()
    {
        //bill_no.Text = "";
        ts_id.Text = "";
        ddl_product.SelectedIndex = -1;
        qty.Text = "";
        cost_per_unit.Text = "";
        total.Text = "";
        txt_ugst.Text = "";
        txt_sgst.Text = "";
        txt_cgst.Text = "";
        txt_igst.Text = "";
    }
    public void Update1()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_temp_transaction_sell_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_no.Text.ToString());
        cmd.Parameters.AddWithValue("@ts_id", ts_id.Text.ToString());
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@cost_per_unit", cost_per_unit.Text.ToString());
        cmd.Parameters.AddWithValue("@total", total.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        BindListView1();
        btn_addmore.Text = "Add More";
        clear1();
    }
    protected void btn_final_Click(object sender, EventArgs e)
    {
        if (btn_final.Text == "Save")
        {
            submit();
        }
        if (btn_final.Text == "update")
        {
            Update();
        }
    }
    protected void ddl_customer_SelectedIndexChanged(object sender, EventArgs e)
    {
        cs_name.Text = ddl_customer.SelectedItem.Text.ToString();
        if (ddl_customer.SelectedItem.Text == "Others")
        {
            cs_name.Text = "";
        }
    }
}