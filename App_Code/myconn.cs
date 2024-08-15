using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for admin
/// </summary>
public class myconn
{
    public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
   
	public myconn()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void cnopen()
    {
        cn.Open();
    }
    public void cnclose()
    {
        cn.Close();
    }
}