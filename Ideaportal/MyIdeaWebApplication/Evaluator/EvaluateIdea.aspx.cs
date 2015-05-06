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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect(Request.EvaluateIdea.aspx);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPNETDBConnectionString1"].ConnectionString);
            con.Open();

            Label3.Visible = true;
            Label3.Text = "Evaluation done successfully";

            string insCmd2 = "Insert into Evaluation(IdeaCatagory, IdeaTopic, UserName, Implimentability, Uniqueness, RevenueCost, TotalMark, Comment ) values(@IdeaCatagory, @IdeaTopic, @UserName, @Implimentability, @Uniqueness, @RevenueCost, @TotalMark, @Comment)";
            SqlCommand insertIdea = new SqlCommand(insCmd2, con);
            insertIdea.Parameters.AddWithValue("@IdeaCatagory", DropDownListCatagory.Text);
            insertIdea.Parameters.AddWithValue("@IdeaTopic", TextBoxTopic.Text);
            insertIdea.Parameters.AddWithValue("@UserName", TextBoxUN.Text);
            insertIdea.Parameters.AddWithValue("@Implimentability", TextBoxImpli.Text);
            insertIdea.Parameters.AddWithValue("@Uniqueness", TextBoxUniq.Text);
            insertIdea.Parameters.AddWithValue("@RevenueCost", TextBoxCost.Text);
            insertIdea.Parameters.AddWithValue("@TotalMark", TextBoxTotal.Text);
            insertIdea.Parameters.AddWithValue("@Comment", TextBoxComment.Text);

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

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            //Your logic here...
            Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }

     }
}