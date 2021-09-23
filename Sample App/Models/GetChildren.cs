using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class GetChildren
    {
        public List<JsTreeChild> getChildren(SqlConnection connection, int id)
        {
            connection.Open();
            List<JsTreeChild> final = new List<JsTreeChild>();
            SqlCommand command = new SqlCommand(cmdText: "CatChildren",connection: connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                JsTreeChild item = new JsTreeChild();
                item.id = reader.GetInt32(0);
                item.text = reader.GetString(1);
                final.Add(item);
            }
            connection.Close();
            return final;
        }
    }
}
