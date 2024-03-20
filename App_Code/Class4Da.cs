using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class4Da
/// </summary>
public class Class4Da
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;
    string constr = ConfigurationManager.ConnectionStrings["TempCon28"].ConnectionString;
    public void addTemp4(Class4Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp4_Insert", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Video", cd.Video);


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public void updateTemp4(Class4Data cd)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("temp4_Update", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", cd.sno);
        cmd.Parameters.AddWithValue("@Video", cd.Video);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public void DeleteTemp4(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp4_Delete", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    public DataSet listTemp4()
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp4_Select", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB4");
        return ds;

    }

    public DataSet Temp4_Selectbysrn(int sno)
    {
        conn = new SqlConnection(constr);
        cmd = new SqlCommand("tamp4_Selectbysno", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sno", sno);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds, "TempTB4");
        return ds;

    }

}