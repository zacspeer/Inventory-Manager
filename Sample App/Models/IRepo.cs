using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public interface IRepo<TEntity, TData>
    {
        List<TEntity> getitems(TData no,TData n/*,TData a*/);
        ProductProp getelement(TData ID);
        bool additem(TEntity item);
        bool deleteitem(TData item);

    }
}