using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");
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
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT ISNULL(MAX(CAST(SUBSTRING(Id,CHARINDEX('S',Id)+1,LEN(Id))AS INT)),0)+1 FROM student", con);
        int tranID = int.Parse(cmd.ExecuteScalar().ToString());
        string rs = "S" + tranID;
        txtid.Text = rs;
        txtuser.Text = rs;
        con.Close();


    }
    String position = "student";
    String verification = "Not Verified";

    protected void Button1_Click(object sender, EventArgs e)
	{
		String dob = txtdate.Text + "/" + txtmonth.Text + "/" + txtyear.Text;
		SqlCommand cmd = new SqlCommand("INSERT INTO student VALUES ('" + txtid.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + dob + "','" + txtemail.Text + "','" + cmbgender.Text + "','" + txtuser.Text + "','" + txtpass.Text + "','"+cmbcourse.Text+"','"+txtnic.Text+"','"+ verification + "')", con);
		con.Open();
		cmd.ExecuteNonQuery();
		//Response.Write("Addedd Successfully.....");
		con.Close();

        SqlCommand cmd1 = new SqlCommand("INSERT INTO login VALUES ('" + txtuser.Text + "','" + txtpass.Text + "','" + position + "')", con);
        con.Open();
        cmd1.ExecuteNonQuery();
        Response.Write("Addedd Successfully.....");
        con.Close();

        txtid.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtdate.Text = "";
        txtmonth.Text = "";
        txtyear.Text = "";
        txtuser.Text = "";
        cmbgender.SelectedIndex = 0;
        txtemail.Text = "";
        txtnic.Text = "";
        autoID();

    }

	protected void Button2_Click(object sender, EventArgs e)
	{
		txtid.Text = "";
		txtfname.Text = "";
		txtlname.Text = "";
		txtdate.Text = "";
		txtmonth.Text = "";
		txtyear.Text = "";
		txtuser.Text = "";
		cmbgender.SelectedIndex = 0;
		txtemail.Text = "";
        txtnic.Text = "";
        cmbcourse.SelectedIndex = 0;
        autoID();
    }
}