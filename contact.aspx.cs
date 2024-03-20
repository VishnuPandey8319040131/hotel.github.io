using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class contact : System.Web.UI.Page
{
    Class3Da sda = new Class3Da();
    Class3Data sd = new Class3Data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void clear()
    {
        txtname.Text = txtemail.Text = txtsubject.Text = "";

    }
    
    protected void btnsave_Click(object sender, EventArgs e)
    {
        sd.Name = txtname.Text;
        sd.EMail = txtemail.Text;
        sd.Subject = txtsubject.Text;

        sda.addTemp1(sd);
        Response.Write("<script>alert('Contect added Successfully')</script>");
        clear();
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        clear();
    }
}