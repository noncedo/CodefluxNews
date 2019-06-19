using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace CodefluxNews
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {

            System.Web.Helpers.AntiForgeryConfig.SuppressXFrameOptionsHeader = true;

            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}
