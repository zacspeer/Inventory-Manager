//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;

//namespace Sample_App.Models
//{
//    public class JsTree
//    {
//        static string connectionstring = "";
//        SqlConnection connection = new SqlConnection(connectionString: connectionstring);
//        List<string> branch;
//        List<jstreeclass> final = new List<jstreeclass>();
//        List<JsTreeChild> js = new List<JsTreeChild>();
//        public List<jstreeclass> getTree()
//        {
//            connection.Open();
//            SqlCommand command = new SqlCommand(cmdText: "Select Branch,ID from *TABLENAME* ", connection);
//            command.ExecuteNonQuery();
//            SqlDataReader reader = command.ExecuteReader();
//            while (reader.Read())
//            {

//                js.Add(new JsTreeChild() { text = reader.GetString(0), id = text/* reader.GetInt32(1).ToString()*/ });;
//            }
//            connection.Close();
//            foreach (var root in js)
//            {
//                final.Add(new jstreeclass() { id = root.id, parent = "#", text = root.text });
//            }
//            foreach (var item in js)
//            {
//                foreach (var child in this.child(item.text))
//                {
//                    final.Add(new jstreeclass() { id = item.id + "-" + child.id, parent = item.text, text = child.text });
//                }
//            }
//            return final;

//        }
//        public List<JsTreeChild> child(string id)
//        {
//            connection.Open();
//            List<JsTreeChild> final1 = new List<JsTreeChild>();
//            SqlCommand command1 = new SqlCommand(cmdText: "Select ID,First from *TABLENAME* where Branch=@bname", connection);
//            command1.Parameters.AddWithValue("@bname", id);
//            command1.ExecuteNonQuery();
//            SqlDataReader reader1 = command1.ExecuteReader();
//            while (reader1.Read())
//            {
//                final1.Add(new JsTreeChild() { id = reader1.GetInt32(0).ToString(), text = reader1.GetString(1) });
//            }
//            connection.Close();
//            return final1;
//        }
//    }
//}