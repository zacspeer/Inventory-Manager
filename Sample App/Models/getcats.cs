using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class getcats
    {
        public List<int> getCategories(SqlConnection connection)
        {
            List<int> cats = new List<int>();
            connection.Open();
            SqlCommand command = new SqlCommand(cmdText: "Cats", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.ExecuteNonQuery();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                cats.Add(reader.GetInt32(0));
            }
            //cats.Distinct();
            connection.Close();
            return cats;
        }
    }
}