using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Net;
using System.Text;
public partial class Login : System.Web.UI.Page
{
    Class1 cl = new Class1();
    string conn = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    // SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    SqlDataAdapter da;
    int i;

    protected void Login_Click(object sender, EventArgs e)
    {

        if (chck_1.Checked)
        {
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["UserName"] = txtuser.Text;
            // userInfo["UserColor"] = "Black";
            userInfo.Expires.Add(new TimeSpan(0, 1, 0));
            Response.Cookies.Add(userInfo);

        }
        else
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);


        }
        Response.Cookies["UserName"].Value = txtuser.Text.Trim();
        Response.Cookies["Password"].Value = txtpass.Text.Trim();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txtuser.Text = Request.Cookies["UserName"].Value;
                txtpass.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
            string sql;

            if (txtuser.Text == "" || txtpass.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter email_id and password')", true);
            }
            else
            {
                if (txtuser.Text.Contains("'") || txtuser.Text.Contains(","))
                {
                     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid character')", true);
                }

                else
                {
                    if (txtpass.Text.Contains("'") || txtpass.Text.Contains(","))
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter valid user name and password')", true);

                    }
                    else
                    {
                        if (txtpass.Text == null || txtuser.Text == null)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User name and password should not be blank')", true);
                        }

                        else
                        {
                            sql = "select * from tbl_users where user_name='" + txtuser.Text + "' and password='" + txtpass.Text + "'";


                            dr = cl.selectDR(sql);
                            int i = 0;
                            i = i + 1;
                            if (dr.HasRows)
                            {
                                Session["user_name"] = txtuser.Text;

                                Response.Redirect("purchase.aspx");
                            }
                            else
                            {
                                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('The Email-Id or password you entered is incorrect.')", true);
                            }
                        }
                    }
                }
            }
    }


}