using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class1Da
/// </summary>
public class Class1Da
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    string constr = ConfigurationManager.ConnectionStrings["TempCon28"].ConnectionString;
    public void addTemp28(Class1Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp28_Insert", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Image", cd.Image);


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public void updateTemp28(Class1Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp28_Update", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", cd.sno);
        cmd.Parameters.AddWithValue("@Image", cd.Image);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public void DeleteTemp28(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp28_Delete", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public DataSet listTemp28()
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp28_Select", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB28");
        return ds;

    }

    public DataSet Temp28_Selectbysrn(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp28_Selectbysno", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB28");
        return ds;

    }

}