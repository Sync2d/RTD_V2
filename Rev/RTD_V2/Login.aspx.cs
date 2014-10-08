using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RTD_V2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divWarning.Visible = false;
            divError.Visible = false;

            if (!IsPostBack)
            {
                
            }
        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "erro" && txtPw.Text.Length > 2)
            {
                divError.Visible = true;
            }
            else
            {
                if (txtUserName.Text != "admin" && txtPw.Text != "admin")
                {
                    divWarning.Visible = true;
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }            
        }
    }
}