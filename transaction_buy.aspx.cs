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
public partial class transaction_buy : System.Web.UI.Page
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

            SqlCommand cmd = new SqlCommand("select * from tbl_transaction_buy", con);
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
        cmd.CommandText = "sp_transaction_buy";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@b_id", b_id.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ws_id.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", igst.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
        cmd.Parameters.AddWithValue("@gt_with_tax", gt_with_tax.Text.ToString());
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
        b_id.Text = "";
        ws_id.Text = "";
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
        cmd.CommandText = "sp_transaction_buy";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@b_id", b_id.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ws_id.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", igst.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
        cmd.Parameters.AddWithValue("@gt_with_tax", gt_with_tax.Text.ToString());
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
                string str1 = "select * from tbl_transaction_buy where t_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["t_id"].ToString();
                    b_id.Text = dr["b_id"].ToString();
                    ws_id.Text = dr["ws_id"].ToString();
                    total_cost.Text = dr["total_cost"].ToString();
                    ugst.Text = dr["ugst"].ToString();
                    sgst.Text = dr["sgst"].ToString();
                    cgst.Text = dr["cgst"].ToString();
                    igst.Text = dr["igst"].ToString();
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
                SqlCommand cmd = new SqlCommand("delete from tbl_transaction_buy where t_id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
               // BindListView();
            }
        }
        catch { }
    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();

            if (e.CommandName == "CmdEdit")
            {


                btn_submit.Text = "update";
                string str1 = "select * from tbl_transaction_detail where t_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn2.Value = dr["t_id"].ToString();
                    p_title.Text = dr["p_id"].ToString();
                    qty.Text = dr["qty"].ToString();
                    selling_price.Text = dr["selling_price_per_unit"].ToString();
                    per_unit_cost.Text = dr["per_unit_cost"].ToString();
                    txt_total_cost.Text = dr["total_cost"].ToString();
                    txt_ugst.Text = dr["ugst"].ToString();
                    txt_cgst.Text = dr["cgst"].ToString();
                    txt_igst.Text = dr["igst"].ToString();
                    txt_sgst.Text = dr["sgst"].ToString();
                }



            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_transaction_detail where t_id=" + id, con);
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

            SqlCommand cmd = new SqlCommand("select * from tbl_transaction_detail", con);
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
    public void submit1()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_transaction_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@p_id", p_title.Text.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@selling_price_per_unit", selling_price.Text.ToString());
        cmd.Parameters.AddWithValue("@per_unit_cost", per_unit_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", txt_total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@barcode", barcode.Text.ToString());
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
        p_title.Text = "";
        qty.Text = "";
        selling_price.Text = "";
        per_unit_cost.Text = "";
        txt_total_cost.Text = "";
        txt_ugst.Text = "";
        txt_sgst.Text = "";
        txt_cgst.Text = "";
        txt_igst.Text = "";
        barcode.Text = "";
        discount.Text = "";
    }
    public void Update1()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_transaction_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@p_id", p_title.Text.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@selling_price_per_unit", selling_price.Text.ToString());
        cmd.Parameters.AddWithValue("@per_unit_cost", per_unit_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", txt_total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@barcode", barcode.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
        // BindListView();
        btn_submit.Text = "insert";
        clear1();
    }

}