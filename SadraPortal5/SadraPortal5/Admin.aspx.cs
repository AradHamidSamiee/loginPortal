using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SadraPortal5
{
    public partial class Admin : System.Web.UI.Page
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
            Response.Redirect("Login.aspx");
        }
    }
}