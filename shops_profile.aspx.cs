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

public partial class shops_profile : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    Class1 cl = new Class1();
     DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    string id = "0";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
            string qry = "select CountryId, CountryName from tbl_Country ";
            cl.filldropdown(qry, "CountryId", "CountryName", ddl_country);
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
            SqlCommand cmd = new SqlCommand("select * from tbl_shops_profile", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        catch { }
    }


    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["Id"] = e.CommandArgument;
        try
        {
            id = e.CommandArgument.ToString();
          
            if (e.CommandName == "CmdEdit")
            {

                // Response.Redirect("CompnayName.aspx?Id=" + Convert.ToInt32(e.CommandArgument));
                btn_submit.Text = "update";
                string str1 = "select * from tbl_shops_profile where id='" + e.CommandArgument + "'";
                SqlDataReader dr = cl.selectDR(str1);
                if (dr.Read())
                {
                    hdn1.Value = dr["id"].ToString();
                    txt_name.Text = dr["name"].ToString();
                    txt_address.Text = dr["address"].ToString();
                    ddl_city.SelectedValue = dr["city"].ToString();
                    ddl_district.SelectedValue = dr["district"].ToString();
                    ddl_state.SelectedValue = dr["state"].ToString();
                   ddl_country.SelectedValue = dr["country"].ToString();
                    txt_statecode.Text = dr["state_code"].ToString();
                    txt_phone1.Text = dr["phone1"].ToString();
                    txt_phone2.Text = dr["phone2"].ToString();
                    txt_phone3.Text = dr["phone3"].ToString();
                    txt_mobile1.Text = dr["mobile_no1"].ToString();
                    txt_mobile2.Text = dr["mobile_no2"].ToString();
                    txt_mobile3.Text = dr["mobile_no3"].ToString();
                    mail1.Text = dr["mail_id1"].ToString();
                    mail2.Text = dr["mail_id2"].ToString();
                    website.Text = dr["website"].ToString();
                    regno.Text = dr["regno"].ToString();
                    tin_no.Text = dr["tin_no"].ToString();
                    gst_no.Text = dr["gst_no"].ToString();
                    cin_no.Text = dr["cin_no"].ToString();
                    servicetaxno.Text = dr["service_tax_no"].ToString();
                    string photo = dr["logo"].ToString();
                   Session["Image"]=photo;
                   tagline.Text = dr["tag_line"].ToString();
                }

            }
            if (e.CommandName == "CmdDelete")
            {
                Session["id"] = e.CommandArgument.ToString();
                SqlConnection con = new SqlConnection(conn);
                id = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("delete from tbl_shops_profile where id=" + id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('Deleted Successfully');</script>");
                BindListView();
            }
            //btnSub.Text = "insert";
        }
        catch { }
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
    public void submit()
    {

        string photo;
        System.Guid filename = System.Guid.NewGuid();
        photo = "~/Uploads/";
        if (file_logo.HasFile)
        {

            photo += filename + id + DateTime.Now.ToString("yyyyMMddHHmmssfff") + System.IO.Path.GetExtension(file_logo.PostedFile.FileName);
            file_logo.SaveAs(MapPath(photo));
        }
        else
        {
            // pthoto = Session["i"].ToString();

        }
        SqlConnection con = new SqlConnection(conn);
        SqlCommand com = new SqlCommand();
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "sp_shops_profile";
        com.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
        com.Parameters.AddWithValue("@id", 0);
        com.Parameters.AddWithValue("@name", txt_name.Text.ToString());
        com.Parameters.AddWithValue("@address", txt_address.Text.ToString());
        com.Parameters.AddWithValue("@city", Convert.ToInt32(ddl_city.SelectedValue.ToString()));
        com.Parameters.AddWithValue("@district", Convert.ToInt32(ddl_district.SelectedValue.ToString()));
        com.Parameters.AddWithValue("@state", Convert.ToInt32(ddl_state.SelectedValue.ToString()));
        com.Parameters.AddWithValue("@country", Convert.ToInt32(ddl_country.SelectedValue.ToString()));
        com.Parameters.AddWithValue("@state_code", txt_statecode.Text.ToString());
        com.Parameters.AddWithValue("@phone1", txt_phone1.Text.ToString());
        com.Parameters.AddWithValue("@phone2", txt_phone2.Text.ToString());
        com.Parameters.AddWithValue("@phone3", txt_phone3.Text.ToString());
        com.Parameters.AddWithValue("@mobile_no1", txt_mobile1.Text.ToString());
        com.Parameters.AddWithValue("@mobile_no2", txt_mobile2.Text.ToString());
        com.Parameters.AddWithValue("@mobile_no3", txt_mobile3.Text.ToString());
        com.Parameters.AddWithValue("@mail_id1", mail1.Text.ToString());
        com.Parameters.AddWithValue("@mail_id2", mail2.Text.ToString());
        com.Parameters.AddWithValue("@website", website.Text.ToString());
        com.Parameters.AddWithValue("@regno", regno.Text.ToString());
        com.Parameters.AddWithValue("@tin_no", tin_no.Text.ToString());
        com.Parameters.AddWithValue("@gst_no", gst_no.Text.ToString());
        com.Parameters.AddWithValue("@cin_no", cin_no.Text.ToString());
        com.Parameters.AddWithValue("@service_tax_no", servicetaxno.Text.ToString());
        com.Parameters.AddWithValue("@logo", photo);
        com.Parameters.AddWithValue("@tag_line", tagline.Text.ToString());
        com.Parameters.Add("@result", SqlDbType.NVarChar, 500);
        com.Parameters["@result"].Direction = ParameterDirection.Output;
        com.Connection = con;
        con.Open();
        com.ExecuteNonQuery();
        lbl_msg.Text = com.Parameters["@result"].Value.ToString();
        clear();
        BindListView();
    }
    public void Update()
    {
        try
        {
            string photo;
            System.Guid filename = System.Guid.NewGuid();
            photo = "~/Uploads/";
            if (file_logo.HasFile)
            {

                photo += filename + id + DateTime.Now.ToString("yyyyMMddHHmmssfff") + System.IO.Path.GetExtension(file_logo.PostedFile.FileName);
                file_logo.SaveAs(MapPath(photo));
            }
            else
            {
                photo = Session["Image"].ToString();

            }
            SqlConnection con = new SqlConnection(conn);
            SqlCommand com = new SqlCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "sp_shops_profile";
            com.Parameters.AddWithValue("@action", btn_submit.Text.ToLower());
            com.Parameters.AddWithValue("@id", hdn1.Value.ToString());
            com.Parameters.AddWithValue("@name", txt_name.Text.ToString());
            com.Parameters.AddWithValue("@address", txt_address.Text.ToString());
            com.Parameters.AddWithValue("@city", Convert.ToInt32(ddl_city.SelectedValue.ToString()));
            com.Parameters.AddWithValue("@district", Convert.ToInt32(ddl_district.SelectedValue.ToString()));
            com.Parameters.AddWithValue("@state", Convert.ToInt32(ddl_state.SelectedValue.ToString()));
            com.Parameters.AddWithValue("@country", Convert.ToInt32(ddl_country.SelectedValue.ToString()));
            com.Parameters.AddWithValue("@state_code", txt_statecode.Text.ToString());
            com.Parameters.AddWithValue("@phone1", txt_phone1.Text.ToString());
            com.Parameters.AddWithValue("@phone2", txt_phone2.Text.ToString());
            com.Parameters.AddWithValue("@phone3", txt_phone3.Text.ToString());
            com.Parameters.AddWithValue("@mobile_no1", txt_mobile1.Text.ToString());
            com.Parameters.AddWithValue("@mobile_no2", txt_mobile2.Text.ToString());
            com.Parameters.AddWithValue("@mobile_no3", txt_mobile3.Text.ToString());
            com.Parameters.AddWithValue("@mail_id1", mail1.Text.ToString());
            com.Parameters.AddWithValue("@mail_id2", mail2.Text.ToString());
            com.Parameters.AddWithValue("@website", website.Text.ToString());
            com.Parameters.AddWithValue("@regno", regno.Text.ToString());
            com.Parameters.AddWithValue("@tin_no", tin_no.Text.ToString());
            com.Parameters.AddWithValue("@gst_no", gst_no.Text.ToString());
            com.Parameters.AddWithValue("@cin_no", cin_no.Text.ToString());
            com.Parameters.AddWithValue("@service_tax_no", servicetaxno.Text.ToString());
            com.Parameters.AddWithValue("@logo", photo);
            com.Parameters.AddWithValue("@tag_line", tagline.Text.ToString());
            com.Parameters.Add("@result", SqlDbType.NVarChar, 500);
            com.Parameters["@result"].Direction = ParameterDirection.Output;
            com.Connection = con;
            con.Open();
            com.ExecuteNonQuery();
            lbl_msg.Text = com.Parameters["@result"].Value.ToString();
   
            BindListView();
            btn_submit.Text = "insert";
            clear();
        }
        catch { }
    }
    private void clear()
    {
        txt_name.Text = "";
        txt_address.Text = "";
        ddl_city.SelectedIndex = -1;
        ddl_district.SelectedIndex=-1;
        ddl_state.SelectedIndex=-1;
        ddl_country.SelectedIndex=-1;
        txt_statecode.Text = "";
        txt_phone1.Text = "";
        txt_phone2.Text = "";
        txt_phone3.Text = "";
        txt_mobile1.Text = "";
        txt_mobile2.Text = "";
        txt_mobile3.Text = "";
        mail1.Text = "";
        mail2.Text = "";
        website.Text = "";
        regno.Text = "";
        tin_no.Text = "";
        gst_no.Text = "";
        cin_no.Text = "";
        servicetaxno.Text = "";
        tagline.Text = "";
    }

    protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
    {
        string quy = "select CityId, CityName  from tbl_City  where CountryId= '" + ddl_country.SelectedValue + "' and StateId='" + ddl_state.SelectedValue + "' and DistrictId='" + ddl_district.SelectedValue + "'";
        cl.filldropdown(quy, "CityId", "CityName", ddl_city);
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qy = "select DistrictId,  District  from tbl_District where CountryId= '" + ddl_country.SelectedValue + "' and StateId= '" + ddl_state.SelectedValue + "' ";
        cl.filldropdown(qy, "DistrictId", "District", ddl_district);

        SqlConnection con = new SqlConnection(conn);
        string q = "select code from tblState where Id='" + ddl_state.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataReader dr = cl.selectDR(q);
        if (dr.Read())
        {
            txt_statecode.Text = dr["code"].ToString();
        }
        dr.Close();
    }
    protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qury = "select Id, State from tblState where CountryId ='" + ddl_country.SelectedValue + "' ";
        cl.filldropdown(qury, "Id", "State", ddl_state);
    }
   
}

