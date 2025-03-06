using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecafe.DAO;
using websitecafe.Models;

namespace websitecafe.Controllers.Admin
{
    public class AdminCategoryController : Controller
    {
        ProductDao productDao = new ProductDao();
        CategoryDao categoryDao = new CategoryDao();

        // GET: AdminProduct
        public ActionResult Index(string msg)
        {
            ViewBag.Msg = msg;
            ViewBag.List = categoryDao.GetAllCategories();
            return View();
        }
        public ActionResult Add(Category type)
        {
            categoryDao.AddCategory(type);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Update(Category type)
        {
            categoryDao.UpdateCategory(type);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Delete(Category type)
        {
            var check = categoryDao.GetProductsByCate(type.Id);
            if (check.Count == 0)
            {
                categoryDao.DeleteCategory(type.Id);
                return RedirectToAction("Index", new { msg = "1" });
            }
            else
            {
                return RedirectToAction("Index", new { msg = "2" });
            }
        }
    }
}