using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class Finder
    {
        public List<ProductProp> find(string key)
        {
            ProductDB db = new ProductDB();
            List<ProductProp> final = new List<ProductProp>();
            List<ProductProp> item = db.getitems(999);
            foreach (ProductProp ele in item)
            {
                if (ele.ProductName.ToUpper().Contains(key.ToUpper())) { final.Add(ele); }
                else if (ele.ProductID.ToString().Contains(key)) { final.Add(ele); }
                else if (ele.Category.ToString().Contains(key)) { final.Add(ele); }
                else if (ele.UnitPrice.ToString().Contains(key)) { final.Add(ele); }
                else if (ele.UnitsInStock.ToString().Contains(key)) { final.Add(ele); }
            }
            return final;

        }
    }
}