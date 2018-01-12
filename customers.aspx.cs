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
public partial class customers : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    Class1 cl = new Class1();
    string id;
    string a, b, c, mystring;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
            string qry = "select Id, State from tblState ";
            cl.filldropdown(qry, "Id", "State", ddl_state);
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

            SqlCommand cmd = new SqlCommand("select * from tbl_customers", con);
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
            mystring = gst_no.Text.ToString();
            a = mystring.Substring(0, 2);
            b = mystring.Substring(2, 10);
            c = mystring.Substring(12, 3);
            hdn1.Value = a.ToString();
            hdn2.Value = b.ToString();
            hdn3.Value = c.ToString();

            string qry = "select * from tbl_statecodemaster where code= '" + a + "'";
            string q = cl.excuteScalar(qry);

            if (q == "null" || q == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter correct Gst Number')", true);
            }
            else
            {
                string sql = "select * from tbl_statecodemaster where name= '" + ddl_state.SelectedIndex + "'";
                string r = cl.excuteScalar(sql);
                if (r == q)
                {
                    submit();
                }
                else
                {
                     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You entered wrong Gst Number.')", true);
                }
            }
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
        cmd.CommandText = "sp_customer";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@cs_id", hdn0.Value.ToString());
        cmd.Parameters.AddWithValue("@name", name.Text.ToString());
        cmd.Parameters.AddWithValue("@contact", contact.Text.ToString());
        cmd.Parameters.AddWithValue("@address", address.Text.ToString());
        cmd.Parameters.AddWithValue("@mail_id", mail_id.Text.ToString());
        cmd.Parameters.AddWithValue("@gst_no", gst_no.Text.ToString());
        cmd.Parameters.AddWithValue("@state", Convert.ToInt32(ddl_state.SelectedValue.ToString()));
        cmd.Parameters.AddWithValue("@district", Convert.ToInt32(ddl_district.SelectedValue.ToString()));
        cmd.Parameters.AddWithValue("@state_code", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@pan_no", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@random_no", hdn3.Value.ToString());
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
        ddl_state.SelectedIndex = -1;
        ddl_district.SelectedIndex = -1;
    }
    public void Update()
    {
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_customer";
        cmd.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        cmd.Parameters.AddWithValue("@cs_id", hdn0.Value.ToString());
        cmd.Parameters.AddWithValue("@name", name.Text.ToString());
        cmd.Parameters.AddWithValue("@contact", contact.Text.ToString());
        cmd.Parameters.AddWithValue("@address", address.Text.ToString());
        cmd.Parameters.AddWithValue("@mail_id", mail_id.Text.ToString());
        cmd.Parameters.AddWithValue("@gst_no", gst_no.Text.ToString());
        cmd.Parameters.AddWithValue("@state", Convert.ToInt32(ddl_state.SelectedValue.ToString()));
        cmd.Parameters.AddWithValue("@district", Convert.ToInt32(ddl_district.SelectedValue.ToString()));
        cmd.Parameters.AddWithValue("@state_code", hdn1.Value.ToString());
        cmd.Parameters.AddWithValue("@pan_no", hdn2.Value.ToString());
        cmd.Parameters.AddWithValue("@random_no", hdn3.Value.ToString());
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
                string str1 = "select * from tbl_customers where cs_id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn0.Value = dr["cs_id"].ToString();
                    name.Text = dr["name"].ToString();
                    contact.Text = dr["contact"].ToString();
                    address.Text = dr["address"].ToString();
                    mail_id.Text = dr["mail_id"].ToString();
                    gst_no.Text = dr["gst_no"].ToString();
                    ddl_state.SelectedValue = dr["state"].ToString();
                    ddl_district.SelectedValue = dr["district"].ToString();
                    hdn1.Value=dr["state_code"].ToString();
                    hdn2.Value=dr["pan_no"].ToString();
                    hdn3.Value=dr["random_no"].ToString();
                }

            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_customers where cs_id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                BindListView();
            }
        }
        catch { }
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qy = "select DistrictId,  District  from tbl_District where StateId=" + ddl_state.SelectedValue;
        cl.filldropdown(qy, "DistrictId", "District", ddl_district);                                                                                           

    }
}