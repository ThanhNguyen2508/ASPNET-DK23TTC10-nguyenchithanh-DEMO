using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using websitecafe.Models;

namespace websitecafe.DAO
{
    public class TopicsDao
    {
        private readonly DBWebcafeContext _context;

        public TopicsDao()
        {
            _context = new DBWebcafeContext();
        }

        public List<Topic> GetAllTopics()
        {
            return _context.Topics.ToList();
        }

        public Topic GetTopicsById(int id)
        {
            return _context.Topics.FirstOrDefault(c => c.Id == id);
        }

        public List<News> GetNewsByTopic(int id)
        {
            return _context.News.Where(c => c.TopicId == id).ToList();
        }

        public void AddTopics(Topic Topics)
        {
            _context.Topics.Add(Topics);
            _context.SaveChanges();
        }

        public void UpdateTopics(Topic Topics)
        {
            var existingTopics = _context.Topics.Find(Topics.Id);
            if (existingTopics != null)
            {
                existingTopics.Name = Topics.Name;
                _context.SaveChanges();
            }
        }

        public void DeleteTopics(int id)
        {
            var Topics = _context.Topics.Find(id);
            if (Topics != null)
            {
                _context.Topics.Remove(Topics);
                _context.SaveChanges();
            }
        }
    }
}
