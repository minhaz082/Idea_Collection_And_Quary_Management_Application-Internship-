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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPNETDBConnectionString1"].ConnectionString);
            con.Open();

            //Label3.Visible = true;
            //Label3.Text = "Comment Submitted Successfully";

            string insCmd2 = "Insert into UserComment(IdeaID, CommentU ) values(@IdeaID, @CommentU)";
            SqlCommand insertIdea = new SqlCommand(insCmd2, con);
            //insertIdea.Parameters.AddWithValue("@IdeaID", TextBoxIdeaId.ToString());
            //insertIdea.Parameters.AddWithValue("@IdeaID", TextBoxIdeaId.Text);
            //insertIdea.Parameters.AddWithValue("@CommentU", TextBoxCommentU.Text);
            //insertIdea.Parameters.AddWithValue("@UserName", TextBoxUN.Text);
            

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
}