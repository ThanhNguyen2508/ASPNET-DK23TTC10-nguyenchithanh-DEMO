using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Windows.Forms;
using websitecafe.DAO;
using websitecafe.Models;

namespace websitecafe.Controllers.Admin
{
    public class AdminNewsController : Controller
    {
        NewsDao NewsDao = new NewsDao();
        TopicsDao TopicsDao = new TopicsDao();

        // GET: AdminNews
        public ActionResult Index(string msg)
        {
            ViewBag.Msg = msg;
            ViewBag.List = NewsDao.GetAllNews();
            ViewBag.listCategory = TopicsDao.GetAllTopics();
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Add(News News)
        {
            var file = Request.Files["file"];
            if (file != null && file.ContentLength > 0)
            {
                string fileName = DateTime.Now.Ticks.ToString() + Path.GetExtension(file.FileName);
                string path = Path.Combine(Server.MapPath("~/Content/images/"), fileName);
                file.SaveAs(path);
                News.ImageUrl = fileName;
            }
            News.PublishedDate = DateTime.Now;
            NewsDao.AddNews(News);
            return RedirectToAction("Index", new { msg = "1" });
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Update(News News)
        {
            var existingNews = NewsDao.GetNewsById(News.Id);
            if (existingNews == null)
            {
                return RedirectToAction("Index", new { msg = "3" }); // Không tìm thấy sản phẩm
            }

            var file = Request.Files["file"];
            if (file != null && file.ContentLength > 0)
            {
                string fileName = DateTime.Now.Ticks.ToString() + Path.GetExtension(file.FileName);
                string path = Path.Combine(Server.MapPath("~/Content/images/"), fileName);
                file.SaveAs(path);
                News.ImageUrl = fileName;
            }
            else
            {
                News.ImageUrl = existingNews.ImageUrl;
            }

            NewsDao.UpdateNews(News);
            return RedirectToAction("Index", new { msg = "1" });
        }

        public ActionResult Delete(int id)
        {
            var News = NewsDao.GetNewsById(id);
            if (News != null)
            {
                NewsDao.DeleteNews(id);
                return RedirectToAction("Index", new { msg = "1" });
            }
            return RedirectToAction("Index", new { msg = "2" }); // Không tìm thấy sản phẩm
        }
    }
}