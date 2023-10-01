using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Module_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");
    // int i = 0;
    String id = "C";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //generateautonumber1();
            autoID();
        }
    }
    public void autoID()
    {
        //auto id coding to create unique id for the module
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT ISNULL(MAX(CAST(SUBSTRING(id,CHARINDEX('M',id)+1,LEN(id))AS INT)),0)+1 FROM module", con);
        int tranID = int.Parse(cmd.ExecuteScalar().ToString());
        string rs = "M" + tranID;
        txtid.Text = rs;
        con.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (txtid.Text != "" || txtcourseid.Text != "" || txtname.Text != "")
        {
            //insert the data to database
            /*  SqlCommand cmd = new SqlCommand("INSERT INTO module VALUES ('" + txtid.Text + "','" + txtcourseid.Text + "','" + txtname.Text + "')", con);
              con.Open();
              cmd.ExecuteNonQuery();
              Response.Write("Addedd Successfully.....");
              con.Close();

              txtid.Text = "";
              txtcourseid.Text = "";
              txtcoursename.Text = "";
              txtname.Text = "";
              autoID();*/
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Data required", "alert('Fill all the details');", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Success Message", "confirm('Are you sure do you want to delete');", true);
        }
        else
        {
            //error message if the user didn't fill all the details
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Confirmation", "confirm('Are you sure do you want to delete');", true);
            //Page.ClientScript.RegisterOnSubmitStatement(this.GetType(), "Confirmation", "alert('Are you sure do you want to delete');", true);


        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("SELECT name FROM course WHERE Id='" + txtcourseid.Text + "'", con);
        con.Open();
        SqlDataReader sdr = cmd2.ExecuteReader();
        while (sdr.Read())
        {
            txtcoursename.Text = sdr[0].ToString();

        }
        con.Close();
    }
}