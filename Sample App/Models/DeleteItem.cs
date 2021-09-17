using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class DeleteItem
    {
        public bool Delete(int id, SqlConnection connection)
        {
            connection.Open();
            SqlCommand command = new SqlCommand(cmdText: "DeleteItem", connection: connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", id);
            if (command.ExecuteNonQuery() == 1)
            {
                connection.Close();
                return true;
            }
            else { connection.Close(); return false; }
        }
    }
}