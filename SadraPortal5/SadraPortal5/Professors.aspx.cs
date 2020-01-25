using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SadraPortal5
{
    public partial class Professors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "   ---   موسسه آموزش عالی صدرالمتالهین - صدرا -   " + DateTime.Now.ToShortDateString();

            string name;
            name = Request.QueryString["n"];
            Label3.Text = "Welcome " + name;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(Object sender, EventArgs e)
        {
            string s;
            s = DropDownList1.SelectedItem.Text;
            
            
            //
            SqlConnection Conn = new SqlConnection();
            Conn.ConnectionString = "Data Source=DESKTOP-M10FA1O;Initial Catalog=loginlistsadra;Integrated Security=True";

            //
            Conn.Open();
            /*
            SqlDataAdapter sda = new SqlDataAdapter("Select Score From Students where username = '" + DropDownList1.SelectedItem.Text + "'", Conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if(dt.Rows.Count > 0)
            {*/
                SqlCommand smd = new SqlCommand("Update Students Set Score =" + TextBox1.Text + "where username = '" + DropDownList1.SelectedItem.Text+"'", Conn);
                smd.ExecuteNonQuery();/*
            }*/
            Conn.Close();
        }
    }
}