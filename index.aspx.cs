using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    Class1Da sda = new Class1Da();
    Class2Da sdaa = new Class2Da();
    Class1Data sd = new Class1Data();
    newsDa nda = new newsDa();
    newsData nd = new newsData();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetTemp(); GetTemp2(); ShowNews();
        }
    }
    public void GetTemp()
    {
        DataSet ds = sda.listTemp28();
        rptTemplete.DataSource = ds.Tables[0];
        rptTemplete.DataBind();


    }
    public void GetTemp2()
    {
        DataSet ds = sdaa.listTemp30();


        Repeater2.DataSource = ds.Tables[0];
        Repeater2.DataBind();


    }
    private void ShowNews()
    {
        DateTime Edate = Convert.ToDateTime(DateTime.UtcNow.AddHours(5.51).ToString("yyyy-MM-dd"));
        DataSet ds1 = new DataSet();
        ds1 = nda.NewsTB_shownewsbydat(Edate);
        rptNews.DataSource = ds1.Tables[0];
        rptNews.DataBind();
    }
    protected void rptTemplete_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            int sno = int.Parse(e.CommandArgument.ToString());
            sda.DeleteTemp28(sno);
            GetTemp();
        }
    }
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            int sno = int.Parse(e.CommandArgument.ToString());
            sdaa.DeleteTemp30(sno);
            GetTemp();
        }
    }
}