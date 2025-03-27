using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class DataAccess
{
    private string connectionString;

    public DataAccess()
    {
        connectionString = "Server=DNZDAORICK\\MSSQLSERVER01;Database=LaundryManagementSystem;Integrated Security=True;";

    }

    public DataTable GetData(string query)
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    return dt;
                }
            }
        }
    }

    public void ExecuteQuery(string query)
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}