using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        myconn x = new myconn();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds;
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
           
          
        }
        
        string c = "select count(compid) from tbl_comp";
        da = new SqlDataAdapter(c, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblcomp.Text = ds.Tables[0].Rows[0][0].ToString();


        string m = "select count(modelid) from tbl_model";
        da = new SqlDataAdapter(m, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblmodel.Text = ds.Tables[0].Rows[0][0].ToString();


        string d = "select count(dealerid) from tbl_dealer";
        da = new SqlDataAdapter(d, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lbldealer.Text = ds.Tables[0].Rows[0][0].ToString();


        string u = "select count(userid) from tbl_user";
        da = new SqlDataAdapter(u, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lbluser.Text = ds.Tables[0].Rows[0][0].ToString();


        string str = "SELECT DISTINCT COUNT(dealerid) AS Expr1,address FROM  tbl_dealer GROUP BY address";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        dlcity.DataSource = ds;
        dlcity.DataBind();

       
    }
}