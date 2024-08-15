using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_model : System.Web.UI.Page
{
    model m = new model();
    string qry;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    SqlCommand cmd = new SqlCommand();
    myconn x1 = new myconn();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string str;
        Boolean msg = false;


        str = Server.MapPath("model_img/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        
        qry="insert into tbl_model values(" + ddlcompname.SelectedValue + ",'" + txtmname.Text + "','" + fu1.FileName + "'," + ddlstatus.SelectedValue + ")";
        m.modelins(qry);
    }


  
    
}