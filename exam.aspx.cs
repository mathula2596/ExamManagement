using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class exam : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    String position="student";
    String verifyed;

    protected void verify()
    {
        SqlCommand cmd2 = new SqlCommand("SELECT verify FROM student WHERE username='" + txtuser.Text + "' and password='"+txtpass.Text+"'", con);
        con.Open();
        SqlDataReader sdr = cmd2.ExecuteReader();
        while (sdr.Read())
        {
           verifyed = sdr[0].ToString();

        }
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        verify();
        if (verifyed == "Verified")
        {
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM login WHERE username='" + txtuser.Text + "' AND password='" + txtpass.Text + "'and position='" + position + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {

                Response.Redirect("Stu_dash.aspx?" + txtuser.Text);
            }
            else
            // Response.Write("Invalid username or password");
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Login Error", "alert('Check the username and password');", true);

                txtuser.Text = "";
                txtpass.Text = "";
            }
        }

        else if (verifyed == "Not Verified")
        {
            Response.Write("Sorry, You can't login now");
        }
    }
}