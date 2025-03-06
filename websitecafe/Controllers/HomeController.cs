using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecafe.DAO;

namespace websitecafe.Controllers
{
    public class HomeController : Controller
    {
        private readonly ProductDao _productDao;
        private readonly NewsDao _newsDao;

        public HomeController()
        {
            _productDao = new ProductDao();
            _newsDao = new NewsDao();
        }

        public ActionResult Index()
        {
            ViewBag.Products = _productDao.GetTopViewedProducts(6);
            ViewBag.News = _newsDao.GetLatestNews(2); // Lấy 5 tin mới nhất
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
    }
}
