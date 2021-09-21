using Newtonsoft.Json;
using Sample_App.Models;
using Sample_App.Repos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Results;

namespace Sample_App.Controllers
{
    [RoutePrefix("api/td")]
    public class TableDataController : ApiController
    {
        Logger log = new Logger();
        IRepo<ProductProp, int> repo;
        public TableDataController()
        {
            repo = new ProductDB();
        }
        [Route("{id}")]
        public IEnumerable<ProductProp> Get(int id)
        {
            var a = repo.getitems(1,22);
            return a;
        }
        [HttpPost]
        [Route("")]
        public System.Web.Mvc.ActionResult Get(System.Web.Mvc.FormCollection collection)
        {
            var a = repo.getitems(9,22);
            return log.converttojson(a);
        }
 
       [HttpPost]
       [Route("Delete/{id}")]
       public IHttpActionResult Delete(int id)
       {
            if (repo.deleteitem(id))
                return Ok("200");
            else
                return StatusCode(System.Net.HttpStatusCode.InternalServerError); //Ok("InternalServerError: Could not Delete.");
       }

        [HttpGet]
        [Route("search/{value}")]
        public IEnumerable<ProductProp> search(string value)
        {
            Finder finder = new Finder();
            return finder.find(value);            
        }
        [HttpGet]
        [Route("Edit/{id}")]
        public ProductProp Edit(int id)
        {
            ProductProp final = repo.getelement(id);
            return final;
        }
    }
}
