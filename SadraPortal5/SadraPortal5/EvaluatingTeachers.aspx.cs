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
    public partial class EvaluatingTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //
            SqlConnection Conn = new SqlConnection();
            Conn.ConnectionString = "Data Source=DESKTOP-M10FA1O;Initial Catalog=loginlistsadra;Integrated Security=True";

            //
            Conn.Open();
            SqlCommand smd = new SqlCommand("Update Professors Set eval =" + RadioButtonList1.SelectedItem.Value + " where username = '" + DropDownList1.SelectedItem.Text + "'", Conn);
            smd.ExecuteNonQuery();
            Conn.Close();
        }
    }
}