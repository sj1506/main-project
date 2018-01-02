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
            string qry = "select p_id, p_title from tbl_product";
            cl.filldropdown(qry, "p_id", "p_title", ddl_product);
            string qury = "select ws_id, ws_name from tbl_wholesellers";
            cl.filldropdown(qury, "ws_id", "ws_name", ddl_ws);
            BindListView1();
        }
    }
    /// <summary>
    /// moolchand
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    //protected void btn_submit_Click(object sender, EventArgs e)
    //{
    //    if (btn_submit.Text == "insert")
    //    {
    //        submit();



    //    }
    //    if (btn_submit.Text == "update")
    //    {
    //        Update();
    //    }
    //}
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
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.Parameters.AddWithValue("@t_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@b_id", b_id.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
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
       // clear();
    }
    private void clear()
    {
        b_id.Text = "";
        ddl_ws.SelectedIndex = -1;
        total_cost.Text = "";
        ugst.Text = "";
        sgst.Text = "";
        cgst.Text = "";
        igst.Text = "";
        date.Text = "";
        gt_with_tax.Text = "";
        discount.Text = "";
    }
    //public void Update()
    //{
    //    SqlConnection con = new SqlConnection(conn);
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.CommandText = "sp_transaction_buy";
    //    cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
    //    cmd.Parameters.AddWithValue("@t_id", hdn1.Value.ToString());
    //    cmd.Parameters.AddWithValue("@b_id", b_id.Text.ToString());
    //    cmd.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
    //    cmd.Parameters.AddWithValue("@total_cost", total_cost.Text.ToString());
    //    cmd.Parameters.AddWithValue("@ugst", ugst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@sgst", sgst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@cgst", cgst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@igst", igst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@date", date.Text.ToString());
    //    cmd.Parameters.AddWithValue("@gt_with_tax", gt_with_tax.Text.ToString());
    //    cmd.Parameters.AddWithValue("@discount", discount.Text.ToString());
    //    cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
    //    cmd.Parameters["@result"].Direction = ParameterDirection.Output;
    //    cmd.Connection = con;
    //    con.Open();
    //    cmd.ExecuteNonQuery();
    //    lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
    //   // BindListView();
    //    btn_submit.Text = "insert";
    //    clear();
    //}
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();

            if (e.CommandName == "CmdEdit")
            {
              //  btn_submit.Text = "update";
                string str1 = "select * from tbl_transaction_buy where t_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["t_id"].ToString();
                    b_id.Text = dr["b_id"].ToString();
                    ddl_ws.SelectedValue = dr["ws_id"].ToString();
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
    protected void btn_addmore_Click(object sender, EventArgs e)
    {
        if (btn_addmore.Text == "Add More")
        {
            submit1();
            BindListView1();
            clear1();
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

            SqlCommand cmd = new SqlCommand("select * from tbl_temp_transaction_buy_detail where bill_no='" + b_id.Text + "' and ws_id='" + ddl_ws.SelectedValue + "'", con);
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
                string str1 = "select * from tbl_temp_transaction_buy_detail where t_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn2.Value = dr["t_id"].ToString();
                    b_id.Text = dr["bill_no"].ToString();
                    ddl_product.SelectedValue = dr["p_id"].ToString();
                    qty.Text = dr["qty"].ToString();
                    selling_price.Text = dr["selling_price_per_product"].ToString();
                    per_unit_cost.Text = dr["per_unit_cost"].ToString();
                    txt_total_cost.Text = dr["total_cost"].ToString();
                    txt_ugst.Text = dr["ugst"].ToString();
                    txt_cgst.Text = dr["cgst"].ToString();
                    txt_igst.Text = dr["igst"].ToString();
                    txt_sgst.Text = dr["sgst"].ToString();
                    barcode.Text = dr["barcode"].ToString();
                }
            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_temp_transaction_buy_detail where t_id=" + id, con);
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
        cmd.CommandText = "sp_temp_transaction_buy_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_id.Text.ToString());
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@selling_price_per_unit", selling_price.Text.ToString());
        cmd.Parameters.AddWithValue("@per_unit_cost", per_unit_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", txt_total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@barcode", barcode.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
       
    }
    private void clear1()
    {
        //txt_bill_no.Text="";
        ddl_product.SelectedIndex= -1;
        qty.Text = "";
        selling_price.Text = "";
        per_unit_cost.Text = "";
        txt_total_cost.Text = "";
        txt_ugst.Text = "";
        txt_sgst.Text = "";
        txt_cgst.Text = "";
        txt_igst.Text = "";
        barcode.Text = "";
    }
    public void Update1()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_temp_transaction_buy_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_id.Text.ToString());
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
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
        BindListView1();
        btn_addmore.Text = "Add More";
        clear1();
    }
    protected void btn_final_Click(object sender, EventArgs e)
    {
        if (btn_final.Text == "Save")
        {
            submit();

            string QryforTemp = "select * from dbo.tbl_temp_transaction_buy_detail where bill_no='" + b_id.Text + "' and ws_id='" + ddl_ws.SelectedValue + "'";
            // DataSet dt = new DataSet();
            SqlConnection con = new SqlConnection(conn);
          
            SqlCommand cmd = new SqlCommand(QryforTemp,con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i <ds.Tables[0].Rows.Count; i++)
                {//t_id, bill_no, p_id, qty, selling_price_per_product, per_unit_cost, total_cost, ugst, cgst, igst, sgst, barcode, ws_id
                  //string t_id= ds.Tables[0].Rows[0][""].ToString();


                  SqlCommand cmd1 = new SqlCommand();
                  cmd1.CommandType = CommandType.StoredProcedure;
                  cmd1.CommandText = "sp_transaction_buy_detail";
                  cmd1.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
                  cmd1.Parameters.AddWithValue("@t_id", ds.Tables[0].Rows[i]["t_id"].ToString());
                  cmd1.Parameters.AddWithValue("@bill_no", ds.Tables[0].Rows[i]["bill_no"].ToString());
                  cmd1.Parameters.AddWithValue("@p_id", ds.Tables[0].Rows[i]["p_id"].ToString());
                  cmd1.Parameters.AddWithValue("@qty", ds.Tables[0].Rows[i]["qty"].ToString());
                  cmd1.Parameters.AddWithValue("@selling_price_per_unit", ds.Tables[0].Rows[i]["selling_price_per_product"].ToString());
                  cmd1.Parameters.AddWithValue("@per_unit_cost", ds.Tables[0].Rows[i]["per_unit_cost"].ToString());
                  cmd1.Parameters.AddWithValue("@total_cost", ds.Tables[0].Rows[i]["total_cost"].ToString());
                  cmd1.Parameters.AddWithValue("@ugst", ds.Tables[0].Rows[i]["ugst"].ToString());
                  cmd1.Parameters.AddWithValue("@cgst", ds.Tables[0].Rows[i]["cgst"].ToString());
                  cmd1.Parameters.AddWithValue("@igst", ds.Tables[0].Rows[i]["igst"].ToString());
                  cmd1.Parameters.AddWithValue("@sgst", ds.Tables[0].Rows[i]["sgst"].ToString());
                  cmd1.Parameters.AddWithValue("@barcode", ds.Tables[0].Rows[i]["barcode"].ToString());
                  cmd1.Parameters.AddWithValue("@ws_id", ds.Tables[0].Rows[i]["ws_id"].ToString());
                  cmd1.Parameters.Add("@result", SqlDbType.NVarChar, 500);
                  cmd1.Parameters["@result"].Direction = ParameterDirection.Output;
                  cmd1.Connection = con;
                  if (con.State == ConnectionState.Closed)
                  {
                      con.Open();
                  }
                
                  cmd1.ExecuteNonQuery();
                  lbl_msg.Text = cmd1.Parameters["@result"].Value.ToString();

                  SqlCommand cmd2 = new SqlCommand();
                  cmd2.CommandType = CommandType.StoredProcedure;
                  cmd2.CommandText = "sp_temp_transaction_buy_detail_delete";
                  cmd2.Parameters.AddWithValue("@bill_no", b_id.Text.ToString());
                  cmd2.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
                  cmd2.Connection = con;
                  if (con.State == ConnectionState.Closed)
                  {
                      con.Open();
                  }

                  cmd2.ExecuteNonQuery();



                }
            }


        }
        if (btn_final.Text == "update")
        {
            //Update();
        }
    }

    protected void txt_total_cost_TextChanged(object sender, EventArgs e)
    {
       
        
        
    }
    protected void per_unit_cost_TextChanged(object sender, EventArgs e)
    {
        if (selling_price.Text.ToString() != null || qty.Text.ToString() != null)
        {
            txt_total_cost.Text = Convert.ToString(Convert.ToInt32(selling_price.Text) * Convert.ToInt32(qty.Text));
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "error", true);

        }
    }
    protected void ddl_ws_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindListView1();

    }


    public void inserttransaction_buy_detail()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_temp_transaction_buy_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@t_id", hdn2.Value.ToString());
        //cmd.Parameters.AddWithValue("@bill_no", txt_bill_no.Text.ToString());
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@selling_price_per_unit", selling_price.Text.ToString());
        cmd.Parameters.AddWithValue("@per_unit_cost", per_unit_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@total_cost", txt_total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@barcode", barcode.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();

    }


}