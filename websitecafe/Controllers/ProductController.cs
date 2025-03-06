using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecafe.DAO;
using websitecafe.Models;

namespace websitecafe.Controllers
{
    public class ProductController : Controller
    {
        private readonly ProductDao _productDao;

        public ProductController()
        {
            _productDao = new ProductDao();
        }

        public ActionResult Index(int page = 1, int pageSize = 10, int? categoryId = null, string search = "")
        {
            int totalProducts;
            var products = _productDao.GetProductsByPage(page, pageSize, out totalProducts, categoryId, search);

            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = (int)System.Math.Ceiling((double)totalProducts / pageSize);
            ViewBag.Search = search;
            ViewBag.CategoryId = categoryId;
            ViewBag.Categories = _productDao.GetAllCategories(); // Lấy danh sách danh mục

            return View(products);
        }

        public ActionResult Details(int id)
        {
            var product = _productDao.GetProductById(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            product.View += 1;
            _productDao.UpdateProduct(product);

            // Lấy danh sách sản phẩm liên quan theo category
            var relatedProducts = _productDao.GetRelatedProducts(product.CategoryId, id);

            ViewBag.RelatedProducts = relatedProducts;

            return View(product);
        }
    }
}
