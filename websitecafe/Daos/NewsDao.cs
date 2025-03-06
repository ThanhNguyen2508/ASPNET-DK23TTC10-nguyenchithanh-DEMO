using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using websitecafe.Models;

namespace websitecafe.DAO
{
    public class NewsDao
    {
        private readonly DBWebcafeContext _context;

        public NewsDao()
        {
            _context = new DBWebcafeContext();
        }

        public List<News> GetLatestNews(int count)
        {
            return _context.News
                           .Include("Topic") // Nạp dữ liệu từ bảng Topic
                           .OrderByDescending(n => n.PublishedDate) // Sắp xếp theo ngày mới nhất
                           .Take(count) // Giới hạn số lượng
                           .ToList();
        }

        public List<News> GetAllNews(int pageNumber, int pageSize)
        {
            return _context.News
                           .Include("Topic")
                           .OrderByDescending(n => n.PublishedDate)
                           .Skip((pageNumber - 1) * pageSize)
                           .Take(pageSize)
                           .ToList();
        }

        public List<News> GetNewsByPage(int pageNumber, int pageSize, out int totalNews, int? topicId, string search)
        {
            var query = _context.News.Include("Topic").AsQueryable();

            if (topicId.HasValue)
            {
                query = query.Where(n => n.TopicId == topicId);
            }

            if (!string.IsNullOrEmpty(search))
            {
                query = query.Where(n => n.Title.Contains(search) || n.ShortDescription.Contains(search));
            }

            totalNews = query.Count();

            return query.OrderByDescending(n => n.PublishedDate)
                        .Skip((pageNumber - 1) * pageSize)
                        .Take(pageSize)
                        .ToList();
        }

        public int GetTotalNewsCount()
        {
            return _context.News.Count();
        }

        public News GetNewsById(int id)
        {
            return _context.News
                           .Include("Topic")
                           .FirstOrDefault(n => n.Id == id);
        }

        public void AddNews(News news)
        {
            _context.News.Add(news);
            _context.SaveChanges();
        }

        public bool UpdateNews(News news)
        {
            var existingNews = _context.News.Find(news.Id);
            if (existingNews == null)
                return false;

            existingNews.Title = news.Title;
            existingNews.ShortDescription = news.ShortDescription;
            existingNews.Content = news.Content;
            existingNews.ImageUrl = news.ImageUrl;
            existingNews.PublishedDate = news.PublishedDate;
            existingNews.TopicId = news.TopicId;

            _context.SaveChanges();
            return true;
        }

        public bool DeleteNews(int id)
        {
            var news = _context.News.Find(id);
            if (news == null)
                return false;

            _context.News.Remove(news);
            _context.SaveChanges();
            return true;
        }

        public List<News> GetNewsByPage(int pageNumber, int pageSize, out int totalNews, int? topicId)
        {
            var query = _context.News.Include("Topic").AsQueryable();

            if (topicId.HasValue)
            {
                query = query.Where(n => n.TopicId == topicId);
            }

            totalNews = query.Count();

            return query.OrderByDescending(n => n.PublishedDate)
                        .Skip((pageNumber - 1) * pageSize)
                        .Take(pageSize)
                        .ToList();
        }
        public News GetNewById(int id)
        {
            return _context.News
                           .Include("Topic")
                           .FirstOrDefault(p => p.Id == id);
        }

    }
}
