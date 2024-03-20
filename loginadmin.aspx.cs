using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtname.Value == "ram" && txtpass.Value == "123")
        {
            Response.Redirect("~/Admin/HomeAdmin.aspx");
        }
        else
        {
            Response.Write("<script>alert('user name or pass')</script>");

        }
    
    }
}