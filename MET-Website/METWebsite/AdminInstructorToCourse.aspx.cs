using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace METWebsite
{
    public partial class AdminInstructorToCourse : System.Web.UI.Page
    {
        protected void page_load(object sender, EventArgs e) 
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand getcourses = new SqlCommand("select serial,code,name from Course", con);
            SqlDataReader reader = getcourses.ExecuteReader();
            string serial = ""; string name = ""; string code = "";
            while (reader.Read())
            {
                serial = reader.GetValue(0).ToString();
                Response.Write(serial);
                name = reader.GetValue(2).ToString();
                code = reader.GetValue(1).ToString();

                var citem = new HtmlGenericControl("div");
                citem.Attributes.Add("class", "courseItem");

                var clabeldiv = new HtmlGenericControl("div");
                clabeldiv.Attributes.Add("class", "courseLabel");

                var clabel = new HtmlGenericControl("div");
                clabel.Attributes.Add("class", "courseName");
                clabel.InnerHtml = "(" + code + ") " + name;

                var cbut = new HtmlGenericControl("button");
               // cbut.ID = serial;
                cbut.Attributes.Add("class", "select");
                cbut.Attributes.Add("runat", "server");
                cbut.InnerHtml = "Select";
                //cbut.Attributes.Add("onclientclick ", "selectedcourse()");


                clabeldiv.Controls.Add(clabel);
                citem.Controls.Add(clabeldiv);
                citem.Controls.Add(cbut);
                coursesList.Controls.Add(citem);
           

            }
       
            con.Close();
        }





    }
}