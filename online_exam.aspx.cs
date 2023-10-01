using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Data;
using System.Configuration;
using System.Timers;
public partial class online_exam : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mathu\source\WebSites\WebSite8\App_Data\exam.mdf;Integrated Security=True");
    static DataSet ds = new DataSet();
    int no = 0;
    int qno = 1;
    static int wrong = 0;
    static String answer,checked_answer;
    static int result = 0;
    static int skip = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //question();
        if (!IsPostBack)
        {

            Session["Timer"] = DateTime.Now.AddMinutes(60).ToString();
        }

    }
    protected void Timer1_tick(object sen, EventArgs e)
    {
        if(DateTime.Compare(DateTime.Now,DateTime.Parse(Session["Timer"].ToString())) < 0)
        {
            litMsg.Text = "Time Left : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString() + "Minute " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString() + "Seconds";
        }
        else
        {
            litMsg.Text = "Time out";
        }
    }
    void question()
    {
                
          ds.Clear();

          SqlDataAdapter da = new SqlDataAdapter("select  * from questions where course='" + cmbcourse.Text + "'  ", con);
          da.Fill(ds);
          lblno.Text = qno.ToString();
          lblquestion.Text = ds.Tables[0].Rows[0]["question"].ToString();
          rdbanswer1.Text = ds.Tables[0].Rows[0]["answer1"].ToString();
          rdbanswer2.Text = ds.Tables[0].Rows[0]["answer2"].ToString();
          rdbanswer3.Text = ds.Tables[0].Rows[0]["answer3"].ToString();
          rdbanswer4.Text = ds.Tables[0].Rows[0]["answer4"].ToString();
          answer = ds.Tables[0].Rows[0]["correct_answer"].ToString();
          btnfinish.Visible = false;
 
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        nextquestions();
    }
    void nextquestions()
    {

        if (ds.Tables[0].Rows.Count == 10)
        {
            btnfinish.Visible = true;

        }
        if (rdbanswer1.Checked == true)
        {
            checked_answer = rdbanswer1.Text;
        }
        else if (rdbanswer2.Checked == true)
        {
            checked_answer = rdbanswer2.Text;
        }
        else if (rdbanswer3.Checked == true)
        {
            checked_answer = rdbanswer3.Text;
        }
        else if (rdbanswer4.Checked == true)
        {
            checked_answer = rdbanswer4.Text;
        }
        else
        {
            checked_answer = "";
        }

        if (checked_answer == answer)
        {
            result++;
        }
        else
        {
            wrong++;
        }
        no++;
        qno++;

        lblno.Text = qno.ToString();
        lblquestion.Text = ds.Tables[0].Rows[no]["question"].ToString();
        rdbanswer1.Text = ds.Tables[0].Rows[no]["answer1"].ToString();
        rdbanswer2.Text = ds.Tables[0].Rows[no]["answer2"].ToString();
        rdbanswer3.Text = ds.Tables[0].Rows[no]["answer3"].ToString();
        rdbanswer4.Text = ds.Tables[0].Rows[no]["answer4"].ToString();
        answer = ds.Tables[0].Rows[no]["correct_answer"].ToString();
        rdbanswer1.Checked = false;
        rdbanswer2.Checked = false;
        rdbanswer3.Checked = false;
        rdbanswer4.Checked = false;

    }
    protected void cmbcourse_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        question();
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        no++;
        qno++;

        lblno.Text = qno.ToString();
        lblquestion.Text = ds.Tables[0].Rows[no]["question"].ToString();
        rdbanswer1.Text = ds.Tables[0].Rows[no]["answer1"].ToString();
        rdbanswer2.Text = ds.Tables[0].Rows[no]["answer2"].ToString();
        rdbanswer3.Text = ds.Tables[0].Rows[no]["answer3"].ToString();
        rdbanswer4.Text = ds.Tables[0].Rows[no]["answer4"].ToString();
        answer = ds.Tables[0].Rows[no]["correct_answer"].ToString();
        rdbanswer1.Checked = false;
        rdbanswer2.Checked = false;
        rdbanswer3.Checked = false;
        rdbanswer4.Checked = false;
        skip++;
        Label6.Text = no.ToString();
    }
    
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
        {
            litMsg.Text = "Time Left : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString() + "Minute " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString() + "Seconds";
        }
        else
        {
            litMsg.Text = "Time out";
        }
    }
}