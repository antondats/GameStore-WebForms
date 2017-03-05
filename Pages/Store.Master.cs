using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;

namespace GameStore.Pages
{
    public partial class Store : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string GetAdminLink()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, "admin_panel", null).VirtualPath;
            return path;
        }

        public string GetHomeLink()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, null).VirtualPath;
            return path;
        }
   
    }
}