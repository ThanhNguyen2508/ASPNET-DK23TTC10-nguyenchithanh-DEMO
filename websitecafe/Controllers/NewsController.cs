using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using websitecafe.DAO;
using websitecafe.Models;

namespace websitecafe.Controllers
{
    public class NewsController : Controller
    {
        private readonly NewsDao _newsDao;

        public NewsController()
        {
            _newsDao = new NewsDao();
        }

        public ActionResult Index(int page = 1, int pageSize = 4, int? topicId = null)
        {
            int totalNews;
            var newsList = _newsDao.GetNewsByPage(page, pageSize, out totalNews, topicId);

            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalNews / pageSize);
            ViewBag.TopicId = topicId;

            return View(newsList);
        }


        public ActionResult Details(int id)
        {
            var news = _newsDao.GetNewsById(id);
            if (news == null)
            {
                return HttpNotFound();
            }

            return View(news);
        }
    }
}
