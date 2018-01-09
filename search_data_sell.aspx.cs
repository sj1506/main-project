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
using System.Web.Configuration;

public partial class search_data_sell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }
    protected void btn_display_Click(object sender, EventArgs e)
    {
        string connectionstring = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionstring);//CONVERT(VARCHAR(20), GETDATE(), 100)
        SqlCommand cmd = new SqlCommand("select qty, total, cost_per_unit, p_id from tbl_transaction_sell_detail where date  Between '" + txt_fromdate.Text + "' and '" + txt_enddate.Text + "' and ", cnn);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        cnn.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}