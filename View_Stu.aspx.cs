using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class View_Stu : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM student where Id like '%" + txtsearch.Text + "%' or fname like '%" + txtsearch.Text + "%' or lname like '%" + txtsearch.Text + "%' or nic like '%" + txtsearch.Text + "%'", con);
        //DataTable dt = new DataTable();
        //con.Open();
        //sda.Fill(dt);
        //con.Close();
        //GridView1.DataSource = dt;
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}