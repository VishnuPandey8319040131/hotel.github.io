using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

using System.Web.UI.WebControls;
public partial class Admin_news : System.Web.UI.Page
{
    newsDa nda = new newsDa();
    newsData nd = new newsData();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Getnews();
        }
    }
    public void Getnews()
    {
        DataSet ds = nda.listNewsTB();
        rptContact.DataSource = ds.Tables[0];
        rptContact.DataBind();

    }
    private void clear()
    {
        txtHeading.Text = txtDescription.Text = txtStartDate.Text = TextEndDate.Text = "";

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {



        nd.Heading = txtHeading.Text;
        nd.Description = txtDescription.Text;
        nd.StartDate = txtStartDate.Text;
        nd.EndDate = TextEndDate.Text;

        nda.addNewsTB(nd);
        Response.Write("<script>alert('Contect added Successfully')</script>");
        Getnews(); clear();
        
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void rptContact_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "cmdView")
        {
            int sno = int.Parse(e.CommandArgument.ToString());
            nda.DeleteNewsTB(sno);
            Getnews();
        }
    }
}