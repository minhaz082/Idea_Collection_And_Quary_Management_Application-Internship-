﻿using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
//using iTextSharp.text;
//using iTextSharp.text.pdf;
//using iTextSharp.text.html.simpleparser;


namespace MyIdeaWebApplication
{
    public partial class WebForm10 : System.Web.UI.Page
    {  
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        /// <summary>
        /// This event is used to export gridview data to word document
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnWord_Click(object sender, ImageClickEventArgs e)
        {
            gvdetails.AllowPaging = false;
            gvdetails.DataBind();
            Response.ClearContent();
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "Customers.doc"));
            Response.Charset = "";
            Response.ContentType = "application/ms-word";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            gvdetails.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }

        /// <summary>
        /// This Event is used to export gridview data to Excel
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnExcel_Click(object sender, ImageClickEventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "Customers.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            gvdetails.AllowPaging = false;
            gvdetails.DataBind();

            //Change the Header Row back to white color
            gvdetails.HeaderRow.Style.Add("background-color", "#FFFFFF");

            //Applying stlye to gridview header cells
            for (int i = 0; i < gvdetails.HeaderRow.Cells.Count; i++)
            {
                gvdetails.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");

            }
            int j = 1;
            //This loop is used to apply stlye to cells based on particular row
            foreach (GridViewRow gvrow in gvdetails.Rows)
            {
                gvrow.BackColor = System.Drawing.Color.White;
                if (j <= gvdetails.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }

            gvdetails.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
        
        //protected void btnPDF_Click(object sender, ImageClickEventArgs e)
        //{
        //    Response.ContentType = "application/pdf";
        //    Response.AddHeader("content-disposition", "attachment;filename=UserDetails.pdf");
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    StringWriter sw = new StringWriter();
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);
        //    gvdetails.AllowPaging = false;
        //    gvdetails.DataBind();
        //    gvdetails.RenderControl(hw);
        //    gvdetails.HeaderRow.Style.Add("width", "15%");
        //    gvdetails.HeaderRow.Style.Add("font-size", "10px");
        //    gvdetails.Style.Add("text-decoration", "none");
        //    gvdetails.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
        //    gvdetails.Style.Add("font-size", "8px");
        //    StringReader sr = new StringReader(sw.ToString());
        //    Document pdfDoc = new iTextSharp.text.Document(PageSize.A2, 7f, 7f, 7f, 0f);
        //    HTMLWorker htmlparser = new iTextSharp.text.HTMLWorker(pdfDoc);
        //    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //    pdfDoc.Open();
        //    htmlparser.Parse(sr);
        //    pdfDoc.Close();
        //    Response.Write(pdfDoc);
        //    Response.End();
        //}
    }
}
