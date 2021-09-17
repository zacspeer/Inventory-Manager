using System.Data.SqlClient;

namespace Sample_App.Models
{
    public class AddItem : ProductDB
    {
        public bool add(ProductProp product)
        {
            connection.Open();
            SqlCommand command = new SqlCommand(cmdText: "AddItem", connection: this.connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@name", product.ProductName);
            command.Parameters.AddWithValue("@cat", product.Category);
            command.Parameters.AddWithValue("@price", product.UnitPrice);
            command.Parameters.AddWithValue("@stock", product.UnitsInStock);
            if (command.ExecuteNonQuery() == 1)
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