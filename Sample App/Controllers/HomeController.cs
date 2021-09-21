using Sample_App.Models;
using Sample_App.Repos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Net;
using System.Web.Mvc;

namespace Sample_App.Controllers
{
    public class HomeController : Logger
    {
        public ActionResult Index()
        {
            try
            {
                return View("Index");
            }
            catch (Exception ex)
            {
                this.AddLog("Index", ex.Message, ex.StackTrace);
                return RedirectToAction("Error","ServerError");
            }
        }
        [HttpPost]
        public ActionResult Index(ProductProp item)
        {
            try
            {
                if (db.additem(item)) //Add item to the db 
                    return Json(HttpStatusCode.Accepted);
                else
                    return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
            catch (Exception ex)
            {
                AddLog("Index[Post]", ex.Message, ex.StackTrace);
                return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
        }
        public ActionResult jsTreeData()
        {
            try
            {
                var jstreedata = data.GetData(db);
                if (jstreedata == null || jstreedata.Count <= 0)
                    return Content("500");
                else
                    return Json(jstreedata, JsonRequestBehavior.AllowGet); //returns JsTree data in Json format
                //comment added to test github
            }
            catch (Exception ex)
            {
                AddLog("jsTreeData", ex.Message, ex.StackTrace);
                return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
            
        }
        [HttpPost]
        public ActionResult nodeinfo(List<jstreeclass> data)
        {
            try
            {
                
                foreach (jstreeclass item in data)
                {
                    if (item.id.Contains("-"))
                    {
                        _nodeinfolist.Add(db.getelement(Convert.ToInt32(item.id.Remove(0, item.id.IndexOf("-") + 1))));
                    }

                }
                return Json(_nodeinfolist, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                AddLog("nodeInfo", ex.Message, ex.StackTrace);
                return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
        }
        [HttpPost]
        public ActionResult nodedelete(string data)
        {
            try
            {
                if (data.Contains("-"))
                {
                    return Json(new ProductDB().deleteitem((Convert.ToInt32(data.Remove(0, data.IndexOf("-") + 1)))));
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                AddLog("nodedelete", ex.Message, ex.StackTrace);
                return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
            
        }
        public ActionResult Contact()
        {
            return View("Contact");
        }

        [HttpPost]
        public ActionResult Edit(ProductProp data)
        { 
            try
            {
                if (db.UpdateItem(data)) 
                    return Json(HttpStatusCode.Accepted);
                else
                    return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
            catch (Exception ex)
            {
                AddLog("Edit[Post]", ex.Message, ex.StackTrace);
                return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
        }
        public ActionResult Search()
        {
            try
            {
                return View();
            }
            catch (Exception ex)
            {
                AddLog("Search", ex.Message, ex.StackTrace);
                return RedirectToAction(controllerName: "Error", actionName: "ServerError");
            }
            
        }
        public ActionResult About()
        {
            return View("About");
        }
        [HttpPost]
        public ActionResult tabledata(FormCollection collection)
        {
            try
            {
                tableProperties.Draw = Convert.ToInt32(Request["draw"]);
                tableProperties.Start = Convert.ToInt32(Request["start"]) + 1;
                tableProperties.End = Convert.ToInt32(Request["start"]) + Convert.ToInt32(Request["length"]);
                tableProperties.Direction = Request["order[0][dir]"];
                tableProperties.Column = Request["columns[" + Request["order[0][column]"] + "][name]"];
                return Json(new { data = db.get(tableProperties), draw = tableProperties.Draw, recordsTotal = db.datacount(), recordsFiltered = db.datacount() }, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                AddLog("tabledata", ex.Message, ex.StackTrace);
                return Json(new { error = "Internal Server error" }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}