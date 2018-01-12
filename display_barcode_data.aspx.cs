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
public partial class display_barcode_data : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgridview();
        }
    }
    public void fillgridview()
    {
        string connectionstring = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionstring);
        string qry = "select a.p_title, a.sub_unit, b.total_cost from tbl_product as a , tbl_transaction_buy_detail as b";
        SqlCommand cmd = new SqlCommand(qry, cnn);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        cnn.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}