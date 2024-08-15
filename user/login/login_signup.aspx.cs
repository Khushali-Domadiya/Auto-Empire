using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net.Mail.SmtpException;
public partial class user_login_signup : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        x.cnopen();
        str="insert into tbl_user values('" + txtname.Text + "','" + txtlname.Text + "','" + txtpno.Text + "','" + txtciy.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        Session["email"] = txtemail.Text;
        

        
        x.cnclose();


        MailMessage mail = new MailMessage();
      //  string mailid = ds.Tables[0].Rows[0]["email"].ToString();
        string mailid = txtemail.Text;
        mail.To.Add(mailid);
        mail.From = new MailAddress("infotech.kakshi@gmail.com");

        mail.Subject = "Registration";
     //   string code = Convert.ToString(random.Next(100000, 999999));
        string Body = "Thank you Registration";
        mail.Body = Body;
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("infotech.kakshi@gmail.com", "bhushan611");
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(mail);
        Response.Redirect("~/user/home.aspx");
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        x.cnopen();
        str = "select * from tbl_user where email='" + txt_email.Text + "' and password='" + txt_pass.Text + "'";
        cmd = new SqlCommand(str, x.cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["email"] = txt_email.Text;
            Response.Redirect("~/user/home.aspx");

        }
        else
        {

        }
        x.cnclose();
    }
    public void clear()
    {
        txtname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";
        txtre_pass.Text = "";

        txtpno.Text = "";
    }
}