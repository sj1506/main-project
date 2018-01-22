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

public partial class purchase_return : System.Web.UI.Page
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
            string q = "select unit_id , unit_name from tbl_unit";
            cl.filldropdown(q, "unit_id", "unit_name", ddl_unit);
        }
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

            SqlCommand cmd = new SqlCommand("select * from tbl_purchase_temp_return where ws_id='" + ddl_ws.SelectedValue + "'", con);
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
        cmd.CommandText = "sp_temp_purchase_return";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@pr_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@item_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@item_name", ddl_product.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@rate", rate.Text.ToString());
        cmd.Parameters.AddWithValue("@unit", ddl_unit.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@total", txt_total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@ws_name", ddl_ws.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@narration", txt_narration.Text.ToString());
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
    private void clear1()
    {
        ddl_product.SelectedIndex = -1;
        qty.Text = "";
        rate.Text = "";
        ddl_unit.SelectedIndex=-1;
        txt_total_cost.Text = "";
        ddl_ws.SelectedIndex = -1;
        txt_narration.Text = "";
    }
    public void Update1()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_temp_purchase_return";
        cmd.Parameters.AddWithValue("@action", btn_addmore.Text.ToLower());
        cmd.Parameters.AddWithValue("@pr_id", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@item_id", ddl_product.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@item_name", ddl_product.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@qty", qty.Text.ToString());
        cmd.Parameters.AddWithValue("@rate", rate.Text.ToString());
        cmd.Parameters.AddWithValue("@unit", ddl_unit.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@total", txt_total_cost.Text.ToString());
        cmd.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@ws_name", ddl_ws.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@narration", txt_narration.Text.ToString());
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


            string QryforTemp = "select * from dbo.tbl_purchase_temp_return where ws_id='" + ddl_ws.SelectedValue + "'";
            // DataSet dt = new DataSet();
            SqlConnection con = new SqlConnection(conn);

            SqlCommand cmd = new SqlCommand(QryforTemp, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.CommandText = "sp_purchase_return";
                    cmd1.Parameters.AddWithValue("@action", btn_final.Text.ToLower());
                    cmd1.Parameters.AddWithValue("@pr_id", ds.Tables[0].Rows[i]["pr_id"].ToString());
                    cmd1.Parameters.AddWithValue("@item_id", ds.Tables[0].Rows[i]["item_id"].ToString());
                    cmd1.Parameters.AddWithValue("@item_name", ds.Tables[0].Rows[i]["item_name"].ToString());
                    cmd1.Parameters.AddWithValue("@qty", ds.Tables[0].Rows[i]["qty"].ToString());
                    cmd1.Parameters.AddWithValue("@rate", ds.Tables[0].Rows[i]["rate"].ToString());
                    cmd1.Parameters.AddWithValue("@unit", ds.Tables[0].Rows[i]["unit"].ToString());
                    cmd1.Parameters.AddWithValue("@total", ds.Tables[0].Rows[i]["total"].ToString());
                    cmd1.Parameters.AddWithValue("@ws_id", ds.Tables[0].Rows[i]["ws_id"].ToString());
                    cmd1.Parameters.AddWithValue("@ws_name", ds.Tables[0].Rows[i]["ws_name"].ToString());
                    cmd1.Parameters.AddWithValue("@narration", ds.Tables[0].Rows[i]["narration"].ToString());
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
                    cmd2.CommandText = "sp_temp_purchase_return_delete";
                    cmd2.Parameters.AddWithValue("@ws_id", ddl_ws.SelectedValue.ToString());
                    cmd2.Parameters.AddWithValue("@ws_name", ddl_ws.SelectedItem.ToString());
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
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();

            if (e.CommandName == "CmdEdit")
            {
                btn_addmore.Text = "update";
                string str1 = "select * from tbl_purchase_temp_return where pr_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["pr_id"].ToString();
                    ddl_product.SelectedValue = dr["item_id"].ToString();
                    qty.Text = dr["qty"].ToString();
                    rate.Text = dr["rate"].ToString();
                    ddl_unit.SelectedValue = dr["unit"].ToString();
                    txt_total_cost.Text = dr["total"].ToString();
                    ddl_ws.SelectedValue = dr["ws_id"].ToString();
                    txt_narration.Text = dr["narration"].ToString();
                }
            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_purchase_temp_return where pr_id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                BindListView1();
            }
        }
        catch { }
    }
    protected void rate_TextChanged(object sender, EventArgs e)
    {
        if (rate.Text.ToString() != null || qty.Text.ToString() != null)
        {
            txt_total_cost.Text = Convert.ToString(Convert.ToInt32(rate.Text) * Convert.ToInt32(qty.Text));
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
}