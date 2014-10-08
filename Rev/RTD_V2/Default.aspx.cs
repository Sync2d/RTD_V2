using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace RTD_V2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            HtmlGenericControl li = ((HtmlGenericControl)Master.FindControl("home"));

            if (li != null)
            {
                li.Attributes.Add("Class", "active");
            }
        }
    }
}