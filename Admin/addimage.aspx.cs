using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_addimage : System.Web.UI.Page
{
    Class2Da sda = new Class2Da();
    Class1Data sd = new Class1Data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetTemp2();
        }
    }
    private void clear()
    {
        pr.Src = "images/warn.png";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {




        string ftype = System.IO.Path.GetExtension(F.FileName);
        if (ftype != ".jpg" && ftype != ".png" && ftype != ".gif" && ftype != ".png" && ftype != ".JPEG" && ftype != ".JPEG")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Message Box", "alert('select only Image ..')", true);
        }

        else
        {
            int fsize = F.PostedFile.ContentLength;
            if (fsize > 1048576)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Message Box", "alert('you can upload 1mb..')", true);

            }

            else
            {

                F.SaveAs(Server.MapPath("~/addimage.aspx" + F.FileName));

                sd.Image2 = "~/img" + F.FileName.ToString();

                sda.addTemp30(sd);
                ClientScript.RegisterStartupScript(this.GetType(), "Message Box", "alert('Image seved..')", true);
                GetTemp2();
            }

        }

    }
    public void GetTemp2()
    {
        DataSet ds = sda.listTemp30();
        Repeater2.DataSource = ds.Tables[0];
        Repeater2.DataBind();


    }
    protected void btndelet2_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "cmdView")
        {
            int sno = int.Parse(e.CommandArgument.ToString());
            sda.DeleteTemp30(sno);
            GetTemp2();
        }
    }
}