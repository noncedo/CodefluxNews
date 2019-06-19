using CodefluxNews.Models;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace CodefluxNews.Controllers
{
    public class HomeController : Controller
    {
        NewsDBEntities _db = new NewsDBEntities();
        
        //public ActionResult TopArticles()
        //{           
        //    return View(_db.selectTop8Articles().ToList());
        //}

        public ActionResult Index()
        {
            return View();
        }
        public async Task<JsonResult> GetCategory(string Category, int pageIndex, int pageSize)
        {
            _db.Configuration.ProxyCreationEnabled = false;


            if (Category == "0"|| Category=="All News")
            {
                //var data = _db.selectNewsArticles().OrderByDescending(x=>x.CreatedDate).ToList();
                var json_data = _db.selectNewsArticles().Skip(pageIndex * pageSize).Take(pageSize).ToList();
                return Json(json_data, JsonRequestBehavior.AllowGet);
               

            }
            else
            {

                var imageCounter = _db.selectNewsArticles().Where(x=>x.CategoryName == Category).Skip(pageIndex * pageSize).Take(pageSize).ToList();

             

                return Json(imageCounter,JsonRequestBehavior.AllowGet);
            }

        }
        public ActionResult About()
        {
            return View();
        }

    }
}