using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

using System.Data.SqlClient;

public partial class Lecturer_module : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        txtid.Text = Request.QueryString.ToString();
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string interests = string.Empty;
        foreach (ListItem item in this.CheckBoxList1.Items)
        {
            if (item.Selected)
            {
                interests += item + ",";
            }
        }

        SqlCommand cmd = new SqlCommand("INSERT INTO lecturer_course VALUES ('" + txtid.Text + "','" + interests + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Addedd Successfully.....");
        con.Close();
        Response.Redirect("Lecturer_add.aspx" );

        txtid.Text = "";
        CheckBoxList1.ClearSelection();
    }
}