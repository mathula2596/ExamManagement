using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
	{

	}
    String pos;
    protected void Button3_Click1(object sender, EventArgs e)
    {
        if (rdbadmin.Checked == true)
        {
            pos = "admin";
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM login WHERE username='" + txtuser.Text + "' AND password='" + txtpass.Text + "'and position='" + pos + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {

                Response.Redirect("dash.aspx?"+txtuser.Text);
            }
            else
                Response.Write("Invalid username or password");
            txtuser.Text = "";
            txtpass.Text = "";
        }
        else if (rdblecturer.Checked == true)
        {
            pos = "lecturer";
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM login WHERE username='" + txtuser.Text + "' AND password='" + txtpass.Text + "'and position='" + pos + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {

                Response.Redirect("lec_dash.aspx?" + txtuser.Text);
               // Response.("lec_dash.aspx?" + txtuser.Text);
            }
            else
                Response.Write("Invalid username or password");
            txtuser.Text = "";
            txtpass.Text = "";
        }
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}