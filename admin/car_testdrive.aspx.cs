using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_car_testdrive : System.Web.UI.Page
{
    myconn x = new myconn();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        //x.cnopen();

        //x.cnclose();
    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    txtuname.Text = GridView1.SelectedRow.Cells[2].Text;
    //    txtlname.Text = GridView1.SelectedRow.Cells[3].Text;
    //    txtphoneno.Text = GridView1.SelectedRow.Cells[4].Text;

    //}
}