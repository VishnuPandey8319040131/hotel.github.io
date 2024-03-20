using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

/// <summary>
/// Summary description for newsDa
/// </summary>
public class newsDa
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    string constr = ConfigurationManager.ConnectionStrings["TempCon28"].ConnectionString;
    public void addNewsTB(newsData nd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("NewsTB_Insert", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Heading", nd.Heading);
        cmd.Parameters.AddWithValue("@Description", nd.Description);
        cmd.Parameters.AddWithValue("@StartDate", nd.StartDate);
        cmd.Parameters.AddWithValue("@EndDate", nd.EndDate);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public void updateNewsTB(newsData nd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("NewsTB_Update", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", nd.sno);
        cmd.Parameters.AddWithValue("@Heading", nd.Heading);
        cmd.Parameters.AddWithValue("@Description", nd.Description);
        cmd.Parameters.AddWithValue("@StartDate", nd.StartDate);
        cmd.Parameters.AddWithValue("@EndDate", nd.EndDate);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public void DeleteNewsTB(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("NewsTB_Delete", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public DataSet listNewsTB()
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("NewsTB_Select", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "NewsTB");
        return ds;

    }

    public DataSet NewsTB_Selectbysn(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("NewsTB_Selectbysno", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "NewsTB");
        return ds;

    }
    public DataSet NewsTB_shownewsbydat(DateTime EndDate)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("shownewsbydate", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@EndDate", EndDate);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "NewsTB");
        return ds;

    }
}