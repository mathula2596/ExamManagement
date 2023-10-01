using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class question_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
        string intersts = "";
        SqlCommand cmd = new SqlCommand("Select course from lecturer_course where id = 'L1009'", con); 
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            intersts = dr["course"].ToString();
            
        }
        con.Close();
        string[] arr = intersts.Split(',');
        for(int x=0; x<arr.Length-1;x++)
        {
            cmbcourse.Items.Add(arr[x]) ;

        }
        
     
    }

    protected void cmbgender_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    string correct;
    protected void Button1_Click(object sender, EventArgs e)
    {
       // String correct;
        if (cmbanswer.Text == "Answer 1")
        {
            correct = txtanswer1.Text;

        }
        else if(cmbanswer.Text == "Answer 2")
        {
            correct = txtanswer2.Text;

        }
        else if (cmbanswer.Text == "Answer 3")
        {
            correct = txtanswer3.Text;

        }
        else if (cmbanswer.Text == "Answer 4")
        {
            correct = txtanswer4.Text;

        }
        SqlCommand cmd = new SqlCommand("INSERT INTO questions(lecturer_id,course,date,question,answer1,answer2,answer3,answer4,correct_answer) VALUES ('" + txtlecid.Text + "','" + cmbcourse.Text + "','" + txtdate.Text + "','" + txtquestion.Text + "','" + txtanswer1.Text + "','" + txtanswer2.Text + "','" + txtanswer3.Text + "','" + txtanswer4.Text + "','" +correct+ "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Addedd Successfully.....");
        con.Close();

        //txtlecid.Text = "";
        cmbcourse.SelectedIndex = 0;
        txtdate.Text = "";
        txtdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
        txtquestion.Text = "";
        txtanswer4.Text = "";
        txtanswer3.Text = "";
        cmbanswer.SelectedIndex = 0;
        txtanswer1.Text = "";
        txtanswer2.Text = "";
        
    }
}