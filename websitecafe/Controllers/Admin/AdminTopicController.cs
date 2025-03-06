using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecafe.DAO;
using websitecafe.Models;

namespace websitecafe.Controllers.Admin
{
    public class AdminTopicController : Controller
    {
        NewsDao NewsDao = new NewsDao();
        TopicsDao TopicDao = new TopicsDao();

        // GET: AdminNews
        public ActionResult Index(string msg)
        {
            ViewBag.Msg = msg;
            ViewBag.List = TopicDao.GetAllTopics();
            return View();
        }
        public ActionResult Add(Topic type)
        {
            TopicDao.AddTopics(type);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Update(Topic type)
        {
            TopicDao.UpdateTopics(type);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Delete(Topic type)
        {
            var check = TopicDao.GetNewsByTopic(type.Id);
            if (check.Count == 0)
            {
                TopicDao.DeleteTopics(type.Id);
                return RedirectToAction("Index", new { msg = "1" });
            }
            else
            {
                return RedirectToAction("Index", new { msg = "2" });
            }
        }
    }
}