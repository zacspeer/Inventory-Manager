using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class GetElement:ProductDB
    {
        ProductProp item;
        public ProductProp element( int id)
        {
            connection.Open();
            SqlCommand command = new SqlCommand(cmdText: "GetElement", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                item = new ProductProp();
                item.ProductID = reader.GetInt32(0);
                item.ProductName = reader.GetString(1);
                item.Category = reader.GetInt32(2);
                item.UnitPrice = reader.GetSqlMoney(3).ToDouble();
                item.UnitsInStock = reader.GetInt16(4);
            }
            connection.Close();
            return item;
        }
    }
}