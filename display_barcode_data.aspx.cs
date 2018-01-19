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
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
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
        string qry = "select  a.p_id,a.bar_code,a.p_title, a.sub_unit, b.total_cost from tbl_product as a left join tbl_transaction_buy_detail as b on a.p_id=b.p_id";
        SqlCommand cmd = new SqlCommand(qry, cnn);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        cnn.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {  
        int index = int.Parse(e.CommandArgument.ToString());
        Label id = (Label)GridView1.Rows[index].FindControl("lblid");
        Label paperid = (Label)GridView1.Rows[index].FindControl("lbl_title");
        Label size = (Label)GridView1.Rows[index].FindControl("lbl_size");
        Label total = (Label)GridView1.Rows[index].FindControl("total");
        Label bar = (Label)GridView1.Rows[index].FindControl("bar");
        string barcode=bar.Text;
        txt_title.Text = paperid.Text.ToString();
        txt_size.Text = size.Text.ToString();
       txt_total.Text = total.Text.ToString();
       functionbar(barcode);

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "showModal();", true);

    }

    private void functionbar(string barcode)
    {

        string sbarCode = barcode;
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        using (Bitmap bitMap = new Bitmap(sbarCode.Length * 40, 80))
        {
            using (Graphics graphics = Graphics.FromImage(bitMap))
            {
                Font oFont = new Font("IDAutomationHC39M", 16);
                PointF point = new PointF(2f, 2f);
                SolidBrush blackBrush = new SolidBrush(Color.Black);
                SolidBrush whiteBrush = new SolidBrush(Color.White);
                graphics.FillRectangle(whiteBrush, 0, 0, bitMap.Width, bitMap.Height);
                graphics.DrawString("*" + sbarCode + "*", oFont, blackBrush, point);
            }
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();

                Convert.ToBase64String(byteImage);
                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
            }
            plBarCode.Controls.Add(imgBarCode);
        }


    }
}