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

        public List<News> GetAllNews()
        {
            return _context.News.Include("Topic").ToList();
        }


        public void AddNews(News News)
        {
            _context.News.Add(News);
            _context.SaveChanges();
        }

        public void UpdateNews(News News)
        {
            var existingNews = _context.News.Find(News.Id);
            if (existingNews != null)
            {
                existingNews.Title = News.Title;
                existingNews.ShortDescription = News.ShortDescription;
                existingNews.Content = News.Content;
                existingNews.ImageUrl = News.ImageUrl;
                existingNews.TopicId = News.TopicId;
                _context.SaveChanges();
            }
        }

        public void DeleteNews(int id)
        {
            var News = _context.News.Find(id);
            if (News != null)
            {
                _context.News.Remove(News);
                _context.SaveChanges();
            }
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
