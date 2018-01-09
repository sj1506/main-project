﻿using System;
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
    decimal total_cost1 = 0;
    decimal ugst11, sgst11, cgst11, igst11 = 0;
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
            SqlConnection con = new SqlConnection(conn);
            if (con.State == 0)
            {
                con.Open();
            }

            string bill = "select isnull(max(bill_no),0)+1 from tbl_transaction_sell where ts_id in (select ISNULL(max (ts_id),0) as ts_id from tbl_transaction_sell) ";
            //SELECT @ts_id=ISNULL(MAX(ts_id),0)+1 FROM tbl_transaction_sell
            SqlCommand command = new SqlCommand(bill, con);
            b_no.Text   = command.ExecuteScalar().ToString();
       

        }
    }
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
        cmd.Parameters.AddWithValue("@action","insert");
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
        //clear();
        
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
    //public void Update()
    //{
    //    SqlConnection con = new SqlConnection(conn);
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.CommandText = "sp_transaction_sell";
    //    cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
    //    cmd.Parameters.AddWithValue("@ts_id", hdn1.Value.ToString());
    //    cmd.Parameters.AddWithValue("@customer_id", ddl_customer.SelectedValue.ToString());
    //    cmd.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
    //    cmd.Parameters.AddWithValue("@state", ddl_customer.SelectedValue.ToString());
    //    cmd.Parameters.AddWithValue("@bill_no", b_no.Text.ToString());
    //    cmd.Parameters.AddWithValue("@total_cost", total_cost.Text.ToString());
    //    cmd.Parameters.AddWithValue("@cgst", cgst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@sgst", sgst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@igst", igst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@ugst", ugst.Text.ToString());
    //    cmd.Parameters.AddWithValue("@date", date.Text.ToString());
    //    cmd.Parameters.AddWithValue("@grand_total_with_tax", gt_with_tax.Text.ToString());
    //    cmd.Parameters.AddWithValue("@discount", discount.Text.ToString());
    //    cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
    //    cmd.Parameters["@result"].Direction = ParameterDirection.Output;
    //    cmd.Connection = con;
    //    con.Open();
    //    cmd.ExecuteNonQuery();
    //    lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();
    //    // BindListView();
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
                //btn_submit.Text = "update";
                string str1 = "select * from tbl_transaction_sell where ts_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["ts_id"].ToString();
                    ddl_customer.SelectedValue = dr["customer_id"].ToString();
                    cs_name.Text = dr["customer_name"].ToString();
                    ddl_state.SelectedValue = dr["state"].ToString();
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

            SqlCommand cmd = new SqlCommand("select * from tbl_temp_transaction_sell_detail where customer_id='" + ddl_customer.SelectedValue + "' and customer_name='" + cs_name.Text + "'", con);
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
                    ddl_product.SelectedValue = dr["p_id"].ToString();
                    qty.Text = dr["qty"].ToString();
                    cost_per_unit.Text = dr["cost_per_unit"].ToString();
                    total.Text = dr["total"].ToString();
                    txt_cgst.Text = dr["cgst"].ToString();
                    txt_ugst.Text = dr["ugst"].ToString();
                    txt_igst.Text = dr["igst"].ToString();
                    txt_sgst.Text = dr["sgst"].ToString();
                    date.Text = dr["date"].ToString();
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
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@cost_per_unit", cost_per_unit.Text.ToString());
        cmd.Parameters.AddWithValue("@total", total.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@customer_id", ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
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
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@cost_per_unit", cost_per_unit.Text.ToString());
        cmd.Parameters.AddWithValue("@total", total.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@customer_id", ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
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

            string QryforTemp = "select * from tbl_temp_transaction_sell_detail where customer_id='" + ddl_customer.SelectedValue + "' and customer_name='" + cs_name.Text + "'";
            // DataSet dt = new DataSet();
            SqlConnection con = new SqlConnection(conn);

            SqlCommand cmd = new SqlCommand(QryforTemp, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {//t_id, bill_no, p_id, qty, selling_price_per_product, per_unit_cost, total_cost, ugst, cgst, igst, sgst, barcode, ws_id
                    //string t_id= ds.Tables[0].Rows[0][""].ToString();

                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.CommandText = "sp_transaction_sell_detail";
                    cmd1.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
                    cmd1.Parameters.AddWithValue("@id", ds.Tables[0].Rows[i]["id"].ToString());
                    cmd1.Parameters.AddWithValue("@p_id", ds.Tables[0].Rows[i]["p_id"].ToString());
                    cmd1.Parameters.AddWithValue("@ts_id",0);
                    cmd1.Parameters.AddWithValue("@qty", ds.Tables[0].Rows[i]["qty"].ToString());
                    cmd1.Parameters.AddWithValue("@cost_per_unit", ds.Tables[0].Rows[i]["cost_per_unit"].ToString());
                    cmd1.Parameters.AddWithValue("@total", ds.Tables[0].Rows[i]["total"].ToString());
                    cmd1.Parameters.AddWithValue("@cgst", ds.Tables[0].Rows[i]["cgst"].ToString());
                    cmd1.Parameters.AddWithValue("@ugst", ds.Tables[0].Rows[i]["ugst"].ToString());
                    cmd1.Parameters.AddWithValue("@igst", ds.Tables[0].Rows[i]["igst"].ToString());
                    cmd1.Parameters.AddWithValue("@sgst", ds.Tables[0].Rows[i]["sgst"].ToString());
                    cmd1.Parameters.AddWithValue("@customer_id", ds.Tables[0].Rows[i]["customer_id"].ToString());
                    cmd1.Parameters.AddWithValue("@customer_name", ds.Tables[0].Rows[i]["customer_name"].ToString());
                    cmd1.Parameters.AddWithValue("@date", ds.Tables[0].Rows[i]["date"].ToString());
                    cmd1.Parameters.Add("@result", SqlDbType.NVarChar, 500);
                    cmd1.Parameters["@result"].Direction = ParameterDirection.Output;
                    cmd1.Connection = con;
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    cmd1.ExecuteNonQuery();
                    lbl_msg.Text = cmd1.Parameters["@result"].Value.ToString();

                   // inserttransaction_sell_detail();

                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.CommandText = "sp_temp_transaction_sell_detail_delete";
                    cmd2.Parameters.AddWithValue("@customer_id", ddl_customer.SelectedValue.ToString());
                    cmd2.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
                    cmd2.Connection = con;
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    cmd2.ExecuteNonQuery();

                }

            }
            BindListView1();
        }
             if (btn_final.Text == "update")
            {
                //Update();
            }
    }
    protected void ddl_customer_SelectedIndexChanged(object sender, EventArgs e)
    {
        cs_name.Text = ddl_customer.SelectedItem.Text.ToString();
        if (ddl_customer.SelectedItem.Text == "Others")
        {
            cs_name.Text = "";
        }
        BindListView1();
    }
    protected void ddl_product_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conn);
       if (con.State == 0)
            {
                con.Open();
            }

        string sql = "select ugst, cgst, igst, sgst from tbl_transaction_buy_detail where p_id= '" + ddl_product.SelectedValue + "'";
        SqlCommand cmd= new SqlCommand(sql,con);
         SqlDataReader dr = cl.selectDR(sql);
                if (dr.Read())
                {
                    txt_cgst.Text = dr["cgst"].ToString();
                    txt_sgst.Text = dr["sgst"].ToString();
                    txt_igst.Text = dr["igst"].ToString();
                    txt_ugst.Text = dr["ugst"].ToString();
                }
            }
    public void inserttransaction_sell_detail()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_temp_transaction_sell_detail";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@id", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@bill_no", b_no.Text.ToString());
        cmd.Parameters.AddWithValue("@p_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@cost_per_unit", cost_per_unit.Text.ToString());
        cmd.Parameters.AddWithValue("@total", total.Text.ToString());
        cmd.Parameters.AddWithValue("@cgst", txt_cgst.Text.ToString());
        cmd.Parameters.AddWithValue("@ugst", txt_ugst.Text.ToString());
        cmd.Parameters.AddWithValue("@igst", txt_igst.Text.ToString());
        cmd.Parameters.AddWithValue("@sgst", txt_sgst.Text.ToString());
        cmd.Parameters.AddWithValue("@customer_id", ddl_customer.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@customer_name", cs_name.Text.ToString());
        cmd.Parameters.AddWithValue("@date", date.Text.ToString());
        cmd.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        cmd.Parameters["@result"].Direction = ParameterDirection.Output;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        lbl_msg.Text = cmd.Parameters["@result"].Value.ToString();

    }


    protected void ListView2_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            Label lbl_totalcost = (Label)e.Item.FindControl("lbl_total1");
            total_cost1 = total_cost1 + Convert.ToDecimal(lbl_totalcost.Text);
            total_cost.Text = total_cost1.ToString();
            

            Label lbl_totalcgst = (Label)e.Item.FindControl("lbl_cgst1");
            cgst11 = cgst11 + Convert.ToDecimal(lbl_totalcgst.Text);
            cgst.Text = cgst11.ToString();

            Label lbl_totalsgst = (Label)e.Item.FindControl("lbl_sgst1");
            sgst11 = sgst11 + Convert.ToDecimal(lbl_totalsgst.Text);
            sgst.Text = sgst11.ToString();

            Label lbl_totaligst = (Label)e.Item.FindControl("lbl_igst1");
            igst11 = igst11 + Convert.ToDecimal(lbl_totaligst.Text);
            igst.Text = igst11.ToString();

            Label lbl_totalugst = (Label)e.Item.FindControl("lbl_ugst1");
            ugst11 = ugst11 + Convert.ToDecimal(lbl_totalugst.Text);
            ugst.Text = ugst11.ToString();
        }
    }
}