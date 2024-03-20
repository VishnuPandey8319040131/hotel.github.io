using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_contact : System.Web.UI.Page
{
    Class3Da sda = new Class3Da();
    Class3Data sd = new Class3Data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Getcontact();
        }
    }
    public void Getcontact()
    {
        DataSet ds = sda.listTemp1();
        rptContact.DataSource = ds.Tables[0];
        rptContact.DataBind();

    }
    protected void rptContact_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            int sno = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("contact.aspx?sno=" + sno);
        }
    }
}