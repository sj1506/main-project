using System;
using System.Collections.Generic;

using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
   string conn = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
   SqlConnection con = new SqlConnection();
     SqlCommand com = new SqlCommand();
    SqlDataReader dr;
    SqlDataAdapter adpt = new SqlDataAdapter();
    
    public Class1()
    {

    }
    
    public void exexuteQry(string str)
    {
        //insert,update and delete
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = conn;
            con.Open();
        }

        com.CommandText = str;
        com.Connection = con;
        com.ExecuteNonQuery();
        con.Close();
    }

    public DataSet selectDS(string str)
    {
        DataSet ds = new DataSet();
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = conn;
            con.Open();
        }
        com.Connection = con;
        com.CommandText = str;
        adpt.SelectCommand = com;
        adpt.Fill(ds);
        return ds;
        //con.Close();

    }
    public SqlDataReader selectDR(string str)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = conn;
            con.Open();
        }
        com.Connection = con;
        com.CommandText = str;
        dr = com.ExecuteReader();
        return dr;
    }

 

    public string excuteScalar(string str)
    {
        string s;
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = conn;
            con.Open();
        }
        com.Connection = con;
        com.CommandText = str;
        s = Convert.ToString(com.ExecuteScalar());
        return s;
    
	}


    public DataTable filltable(string s)
    {
        con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand(s, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlDataReader drr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(drr);
        return dt;

    }

    public void fillGrid(string sql, GridView gv)
    {
        gv.DataSource = filltable(sql);
        gv.DataBind();

    }

    public void fillRepeater(string sql, Repeater rp)
    {
        rp.DataSource = filltable(sql);
        rp.DataBind();

    }

    public void fillListView(string sql, ListView lv)
    {
        lv.DataSource = filltable(sql);
        lv.DataBind();

    }
    public DataTable fillGrid(string sql, GridView gv,int i)
    {
        con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand(sql, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlDataReader drr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(drr);
        gv.DataSource = dt;
        gv.DataBind();
        return dt;
    }

    public void filldatalist(string sql, DataList dl)
    {
        dl.DataSource = filltable(sql);
        dl.DataBind();

    }
    public void filldropdown(string sql,string value,string text, DropDownList dd)
    {
        dd.DataSource = filltable(sql);
        dd.DataTextField = text;
        dd.DataValueField = value;
        dd.DataBind();
       
         dd.Items.Insert(0, new ListItem("      --------Select-------", "-1"));


    }






    public void filldropdownNotSelect(string sql, string value, string text, DropDownList dd)
    {
        dd.DataSource = filltable(sql);
        dd.DataTextField = text;
        dd.DataValueField = value;
        dd.DataBind();

    }
  
    public void filldt(string sql, DataList dt)
    {
        dt.DataSource = filltable(sql);
        dt.DataBind();

    }

    public void filldatalist(string str, Repeater rp1)
    {
        rp1.DataSource = filltable(str);
        rp1.DataBind();
    }












	
}