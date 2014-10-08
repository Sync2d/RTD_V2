using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace Win8Temp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btLogin_Click1(object sender, EventArgs e)
        {            
            if (txtusername.Value != "" && txtpassword.Value != "")
            {
                if (txtusername.Value == "user" && txtpassword.Value == "123")
                {
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Div1.Visible = true;
                }
            }
            else
            {
                Div1.Visible = true;
            }
           
        }  
    }
}