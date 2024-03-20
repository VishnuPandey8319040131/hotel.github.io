using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class2Da
/// </summary>
public class Class2Da
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    string constr = ConfigurationManager.ConnectionStrings["TempCon28"].ConnectionString;


    public void addTemp30(Class1Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp30_Insert", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Image2", cd.Image2);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public void updateTemp30(Class1Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp30_Update", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", cd.sno);

        cmd.Parameters.AddWithValue("@Image2", cd.Image2);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public void DeleteTemp30(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp30_Delete", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }


    public DataSet listTemp30()
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp30_Select", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB30");
        return ds;

    }



    public DataSet Temp30_Selectbysrn(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp30_Selectbysno", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB30");
        return ds;

    }




}