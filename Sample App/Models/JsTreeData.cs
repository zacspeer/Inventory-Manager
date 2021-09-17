using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace Sample_App.Models
{
    public class JsTreeData
    {
        public List<jstreeclass> GetData(ProductDB db)
        {
            List<jstreeclass> jstree = new List<jstreeclass>();
            List<int> parent = db.GetCategories(); 
            foreach (int item in parent)
            {
                jstree.Add(new jstreeclass() { id = item.ToString(), parent = "#", text =/*"Category "+*/item.ToString() });
            }
            foreach (int item in parent)
            {
                foreach (JsTreeChild childitem in db.GetChildren(item))
                {
                    jstree.Add(new jstreeclass() { id = item.ToString() + "-" + childitem.id.ToString(), parent = item.ToString(), text = childitem.text });
                }
            }
            //jstree.Distinct();
            return jstree;
        }
    }
}