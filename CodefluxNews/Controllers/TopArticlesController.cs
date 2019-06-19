using CodefluxNews.Models;
using System.Linq;
using System.Web.Mvc;


namespace CodefluxNews.Controllers
{
    public class TopArticlesController : Controller
    {
        NewsDBEntities _db = new NewsDBEntities();

        public ActionResult Index()
        {
            return View(_db.selectTop8Articles().ToList());
        }

    }
}