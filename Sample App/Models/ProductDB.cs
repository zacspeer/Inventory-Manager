using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text;

namespace Sample_App.Models
{
    public class ProductDB : IRepo<ProductProp, int>
    {
        
        #region Constructor
        protected string connectionstring;
        protected SqlConnection connection;
        public ProductDB()
        {
            connectionstring = ConfigurationManager.ConnectionStrings["NothwindContext"].ConnectionString;
            connection = new SqlConnection(connectionString: connectionstring);
            
        }
        #endregion Constructor

        #region Additem
        public bool additem(ProductProp item)
        {
            AddItem additem = new AddItem();
            return additem.add(item);
            
        }
        #endregion

        public bool deleteitem(int item)
        {
            DeleteItem delete = new DeleteItem();
            return delete.Delete(item, connection);
        }
        public virtual ProductProp getelement(int ID)
        {
            GetElement ele = new GetElement();
            return ele.element(ID);
        }
        public List<ProductProp> getitems(int start,int end/*,string sort*/)
        {
            GetItems items = new GetItems();
            return items.getitems(connection,start,end/*,sort*/);
        }
        public List<int> GetCategories()
        {
            getcats cats = new getcats();
            return cats.getCategories(connection);
        }
        public List<JsTreeChild> GetChildren(int id)
        {
            GetChildren children = new GetChildren();
            return children.getChildren(connection,id);
        }
        public bool UpdateItem(ProductProp item)
        {
            return new Update().add(item);
        }
        int count;
        public int datacount()
        {
            connection.Open();
            SqlCommand command = new SqlCommand("DataCount", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                count = reader.GetInt32(0);
            }
            connection.Close();
            return count;
        }
    }
}