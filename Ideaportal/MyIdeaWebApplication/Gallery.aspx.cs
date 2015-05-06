using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace MyIdeaWebApplication
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPNETDBConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataList();
            }
        }
        protected void BindDataList()
        {
            con.Open();
            //Query to get ImagesName and Description from database
            SqlCommand command = new SqlCommand("SELECT ImageName,Description from SlideShowTable", con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dlImages.DataSource = dt;
            dlImages.DataBind();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ////Get Filename from fileupload control
            //string filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
            ////Save images into SlideImages folder
            //fileuploadimages.SaveAs(Server.MapPath("SlideImages/" + filename));
            ////Open the database connection
            //con.Open();
            ////Query to insert images name and Description into database
            //SqlCommand cmd = new SqlCommand("Insert into SlideShowTable(ImageName,Description) values(@ImageName,@Description)", con);
            ////Passing parameters to query
            //cmd.Parameters.AddWithValue("@ImageName", filename);
            //cmd.Parameters.AddWithValue("@Description", txtDesc.Text);
            //cmd.ExecuteNonQuery();
            ////Close dbconnection
            //con.Close();
            //txtDesc.Text = string.Empty;
            //BindDataList();
        }
    }
}
