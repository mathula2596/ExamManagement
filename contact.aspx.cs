using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Moderna_contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
	{

	}



	protected void Button3_Click(object sender, EventArgs e)
	{
		Response.Redirect("register.aspx");
	}

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click1(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand("INSERT INTO contact(name,email,subject,message) VALUES ('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmessage.Text + "')", con);
        con.Open();
        cmd1.ExecuteNonQuery();
       // Response.Write("Addedd Successfully.....");
        con.Close();

       

        txtname.Text = "Your Name";
        txtemail.Text = "Your Email";
        txtsubject.Text = "Subject";
        txtmessage.Text = "Message";
       
    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}