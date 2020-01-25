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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "   ---   موسسه آموزش عالی صدرالمتالهین - صدرا -   " + DateTime.Now.ToShortDateString();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.sadra.ac.ir/");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string radiovalue;

            // DB CONNECTION SET
            SqlConnection ConnSign = new SqlConnection();
            ConnSign.ConnectionString = "Data Source=DESKTOP-M10FA1O;Initial Catalog=loginlistsadra;Integrated Security=True";

            //
            ConnSign.Open();
            radiovalue = RadioButtonList1.SelectedItem.Value;
            if (radiovalue == "0")
            {
                SqlCommand cmd = new SqlCommand("Insert into Admins Values('8','" + TextBox3.Text + "','" + TextBox4.Text + "')", ConnSign);
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            else if (radiovalue == "1")
            {
                SqlCommand cmd = new SqlCommand("Insert into Students Values('8','" + TextBox3.Text + "','" + TextBox4.Text + "')", ConnSign);
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            else if (radiovalue == "2")
            {
                SqlCommand cmd = new SqlCommand("Insert into Professors Values('8','" + TextBox3.Text + "','" + TextBox4.Text + "')", ConnSign);
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }

            ConnSign.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString = "Data Source=DESKTOP-M10FA1O;Initial Catalog=loginlistsadra;Integrated Security=True;Pooling=False";

            conn1.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter("select username, password From Students Where username='" + TextBox1.Text + "'And password='" + TextBox2.Text + "'", conn1);
            SqlDataAdapter sda2 = new SqlDataAdapter("select username, password From Professors Where username='" + TextBox1.Text + "'And password='" + TextBox2.Text + "'", conn1);
            SqlDataAdapter sda3 = new SqlDataAdapter("select username, password From Admins Where username='" + TextBox1.Text + "'And password='" + TextBox2.Text + "'", conn1);

            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);

            if (dt1.Rows.Count > 0)
                Response.Redirect("Inside.aspx?n=" + TextBox1.Text);
            else if (dt2.Rows.Count > 0)
                Response.Redirect("Professors.aspx?n=" + TextBox1.Text);
            else if (dt3.Rows.Count > 0)
                Response.Redirect("Admin.aspx?n=" + TextBox1.Text);

            /*SqlDataAdapter sda2 = new SqlDataAdapter("select username, password From Professors Where username='" + TextBox1.Text + "'And password='" + TextBox2.Text + "'", conn1);
            DataTable dt2 = new DataTable();
            sda1.Fill(dt2);
            if (dt1.Rows.Count > 0)
                Response.Redirect("Professors.aspx?n=" + TextBox1.Text);
            
            SqlDataAdapter sda3 = new SqlDataAdapter("select username, password From Admins Where username='" + TextBox1.Text + "'And password='" + TextBox2.Text + "'", conn1);
            DataTable dt3 = new DataTable();
            sda1.Fill(dt3);
            if (dt1.Rows.Count > 0)
                Response.Redirect("Admin.aspx?n=" + TextBox1.Text);*/

            conn1.Close();
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}