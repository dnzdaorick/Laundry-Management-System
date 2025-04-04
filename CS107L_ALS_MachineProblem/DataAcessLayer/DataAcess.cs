using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class DataAccess
{
    private string connectionString;

    public DataAccess()
    {
        connectionString = "Server=WFH\\SQLEXPRESS01;Database=LaundryManagementSystem;Integrated Security=True;";

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
        try
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
        catch (SqlException ex)
        {
            // Log the exception message
            Console.WriteLine($"SQL Error: {ex.Message}");
            // Optionally, rethrow the exception or handle it as needed
            throw;
        }
    }

}