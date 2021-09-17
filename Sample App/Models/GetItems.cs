using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class GetItems
    {

        public List<ProductProp> getitems(SqlConnection connection, int no)
        {
            List<ProductProp> listofitems = new List<ProductProp>();
            
            connection.Open();
            SqlCommand command = new SqlCommand(connection: connection, cmdText: "GetItems");
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@no",no);
            command.ExecuteNonQuery();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ProductProp product = new ProductProp();
                product.ProductID =Convert.ToInt32(reader["ProductID"]);
                product.ProductName = reader["ProductName"].ToString();
                product.Category = Convert.ToInt32(reader["CategoryID"]);
                product.UnitPrice =Convert.ToDouble(reader["UnitPrice"]);
                product.UnitsInStock = Convert.ToInt16(reader["UnitsInStock"]);
                listofitems.Add(product);
            }
            connection.Close();
            return listofitems;
        }
    }
}