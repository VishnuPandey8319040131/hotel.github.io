using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for Class3Da
/// </summary>
public class Class3Da
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    string constr = ConfigurationManager.ConnectionStrings["TempCon28"].ConnectionString;
    public void addTemp1(Class3Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp1_Insert", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Name", cd.Name);
        cmd.Parameters.AddWithValue("@EMail", cd.EMail);
        cmd.Parameters.AddWithValue("@Subject", cd.Subject);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public void updateTemp1(Class3Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp1_Update", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", cd.sno);
        cmd.Parameters.AddWithValue("@Name", cd.Name);
        cmd.Parameters.AddWithValue("@EMail", cd.EMail);
        cmd.Parameters.AddWithValue("@Subject", cd.Subject);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public void DeleteTemp1(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp1_Delete", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public DataSet listTemp1()
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp1_Select", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB1");
        return ds;

    }

    public DataSet Temp1_Selectbysrn(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp1_Selectbysno", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB1");
        return ds;

    }

}