using Sample_App.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sample_App.Repos
{
    public class Logger:Controller
    {
        protected ProductDB db = new ProductDB();
        protected JsTreeData data = new JsTreeData();
        protected List<ProductProp> _nodeinfolist = new List<ProductProp>();
        public void AddLog(String action = "Unknown", String message="Unknown", String trace="Unknown")
        {
            SqlConnection _connection = new SqlConnection(ConfigurationManager.ConnectionStrings["NothwindContext"].ConnectionString);
            _connection.Open();
            SqlCommand _command = new SqlCommand("AddLog", _connection);
            _command.CommandType = System.Data.CommandType.StoredProcedure;
            _command.Parameters.AddWithValue("@name", action);
            _command.Parameters.AddWithValue("@trace", trace);
            _command.Parameters.AddWithValue("@message", message);
            _command.ExecuteNonQuery();
        }
    }
}