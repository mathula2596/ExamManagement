using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class course_add : System.Web.UI.Page
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
      //  autoID();
    }
    //private void generateautonumber()
    //{
    //    //  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ToString());
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("proc_AutoGenNumber", con);
    //    cmd.CommandType = System.Data.CommandType.StoredProcedure;
    //    string value = cmd.ExecuteScalar().ToString();
    //    i++;
    //    int rv = Int32.Parse(value) + 1;
    //    txtid.Text = rv.ToString();

    //}
    //private void generateautonumber1()
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select count(id) from course", con);
    //    int i = Convert.ToInt32(cmd.ExecuteScalar());
    //    con.Close();
    //    i++;
    //    txtid.Text = id + i.ToString();
    //}

    public void autoID()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT ISNULL(MAX(CAST(SUBSTRING(Id,CHARINDEX('C',Id)+1,LEN(Id))AS INT)),0)+1 FROM course", con);
        int tranID = int.Parse(cmd.ExecuteScalar().ToString());
        string rs = "C" + tranID;
        txtid.Text = rs;
        con.Close();


    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        try {

            SqlCommand cmd = new SqlCommand("INSERT INTO course VALUES ('" + txtid.Text + "','" + txtname.Text + "','" + txtduration.Text + "','" + txtpayment.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Addedd Successfully.....");
            con.Close();
            autoID();
            txtname.Text = "";
            txtduration.Text = "";
            txtpayment.Text = "";

        }
        catch (Exception ex)
        {

            Response.Write("Insert Fail.....");

        }
        
    }
}



