using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class Update:ProductDB
    {
        public bool add(ProductProp product)
        {
            connection.Open();
            SqlCommand comm = new SqlCommand(cmdText: "UpdateItem", connection: this.connection);
            comm.CommandType = System.Data.CommandType.StoredProcedure;
            
            comm.Parameters.AddWithValue("@name", product.ProductName);
            comm.Parameters.AddWithValue("@category", product.Category);
            comm.Parameters.AddWithValue("@uprice",product.UnitPrice);
            comm.Parameters.AddWithValue("@ustock", product.UnitsInStock);
            comm.Parameters.AddWithValue("@id", product.ProductID);
            comm.ExecuteNonQuery();
            if (comm.ExecuteNonQuery() == 1)
            {
                connection.Close();
                return true;
            }
            else
            {
                connection.Close();
                return false;
            }
            
        }
    }
}