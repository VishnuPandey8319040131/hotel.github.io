using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Slide : System.Web.UI.Page
{
    Class1Da sda = new Class1Da();
    Class1Data sd = new Class1Data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetTemp();
        }
    }
    private void clear()
    {
        pre.Src = "images/warn.png";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string ftype = System.IO.Path.GetExtension(Fu.FileName);
        if (ftype != ".jpg" && ftype != ".png" && ftype != ".gif" && ftype != ".png" && ftype != ".JPEG" && ftype != ".JPEG")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Message Box", "alert('select only Image..')", true);
        }
        else
        {
            int fsize = Fu.PostedFile.ContentLength;
            if (fsize > 1048576)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Message Box", "alert('you can upload 1mb..')", true);

            }
            else
            {
                Fu.SaveAs(Server.MapPath("~/img" + Fu.FileName));
                sd.Image = "~/img" + Fu.FileName.ToString();

                sda.addTemp28(sd);
                ClientScript.RegisterStartupScript(this.GetType(), "Massage Box", "alert('Image Seved..')", true);
                GetTemp();

            }
        }


    }
    public void GetTemp()
    {
        DataSet ds = sda.listTemp28();
        rptTemplete.DataSource = ds.Tables[0];
        rptTemplete.DataBind();

    }
    protected void btndelet_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void rptTemplete_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            int Sno = int.Parse(e.CommandArgument.ToString());
            sda.DeleteTemp28(Sno);
            GetTemp();
        }
    }
}