using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class dealer_registration : System.Web.UI.Page
{
    dealer x = new dealer();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        string str;
        Boolean msg = false;


        str = Server.MapPath("dealer_pictures/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        qry = "insert into tbl_dealer values('"+ txtfname.Text +"','" + txtlname.Text+ "','" + txtdname.Text + "','" + txtemail.Text + "','" + txtpno.Text + "','" + txtaddress.Text + "','" + txtpass.Text + "','" + txtconpass.Text + "','" + fu1.FileName + "')";
        x.dealerins(qry);
        MailMessage mail = new MailMessage();
        string mailid = txtemail.Text;
        mail.To.Add(mailid);
        mail.From = new MailAddress("infotech.kakshi@gmail.com");
        mail.Subject = "Registration";
        string Body = "welcome to our website";
        mail.Body = Body;
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("infotech.kakshi@gmail.com", "bhushan611");
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(mail);
        Response.Redirect("dealer_login1.aspx");
    }
}