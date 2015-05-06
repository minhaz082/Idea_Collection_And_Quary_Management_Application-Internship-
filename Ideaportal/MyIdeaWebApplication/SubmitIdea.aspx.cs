using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;


namespace MyIdeaWebApplication
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPNETDBConnectionString1"].ConnectionString);
            con.Open();
            string cmdStr = "select count(*) from Idea where IdeaTopic= '" + TextBoxIdea.Text + "'";
            SqlCommand Checkuser = new SqlCommand(cmdStr, con);
            int temp = Convert.ToInt32(Checkuser.ExecuteScalar().ToString());
            if (temp == 1)
            {
                string cmdStr2 = "Select UserName from Idea where IdeaTopic= '" + TextBoxIdea.Text + "'";
                SqlCommand uname = new SqlCommand(cmdStr2, con);
                string UserName = uname.ExecuteScalar().ToString();
                con.Close();


                if (UserName == TextBoxUN.Text || temp == 1)
                {
                    Label3.Visible = true;

                    Label3.Text = " This topic already exist please use diffferent topic";    //old user&topic


                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "You have submitted idea on this topic";//New user Old Topic

                }
            }
            else
            {
                TextBoxDate.Text = DateTime.Now.ToString("dd MMMM, yyyy");
                var user = TextBoxUN.Text;
                var topic = TextBoxIdea.Text;
                var details = TextBoxDescription.Text;
                Label4.Visible = true;
                Label4.Text = "Idea topic= " + "" + "" + topic;
                Label5.Visible = true;
                Label5.Text = "Idea Details= " + "" + "" + details;
                Label6.Visible = true;
                Label6.Text = "Submitted By= " + "" + "" + user;

                Label3.Visible = true;
                Label3.Text = "Idea Submitted successfully";
                string insCmd2 = "Insert into Idea(IdeaTopic, IdeaCatagory, IdeaDetails, UserName, Date ) values(@IdeaTopic, @IdeaCatagory, @IdeaDetails, @UserName, @Date)";
                SqlCommand insertIdea = new SqlCommand(insCmd2, con);
                insertIdea.Parameters.AddWithValue("@IdeaTopic", TextBoxIdea.Text);
                insertIdea.Parameters.AddWithValue("@IdeaDetails", TextBoxDescription.Text);
                insertIdea.Parameters.AddWithValue("@IdeaCatagory", DropDownListCatagory.Text);
                //insertIdea.Parameters.AddWithValue("@IdeaID", TextBoxDate.Text);
                insertIdea.Parameters.AddWithValue("@Date",TextBoxDate.Text);
                insertIdea.Parameters.AddWithValue("@UserName", TextBoxUN.Text);

                try
                {
                    insertIdea.ExecuteNonQuery();
                    con.Close();
                    //Response.Redirect("Idea.aspx");
                }

                catch (Exception er)
                {
                    //Response.Write("<b>something really went wrong.....plaease try again</b>");
                    Response.Write(er.Message);
                }



            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
    }
}

