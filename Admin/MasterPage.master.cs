using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{


    protected void Page_Load(object sender, EventArgs e)
    {


        


            //if (Session["userid"]==null)
            //{
            //    Response.Redirect("~/Default.aspx");
            //}
            //else
            //{

            //    if (Session["userrole"].ToString() == "5")
            //    {
            //        //lbl_welcome_msg.Text = Session["userfullname"].ToString();
            //        //Response.Redirect("centeruserwelcome.aspx");
            //    }
            //    else
            //    {
            //        Session.Abandon();
            //        Response.Redirect("~/Default.aspx");
            //    }

               
            //}



            //lbl_welcome_msg.Text = Session["userfullname"].ToString();


        }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }
    
}
