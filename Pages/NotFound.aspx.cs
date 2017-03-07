using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;

namespace GameStore.Pages
{
    public partial class NotFound : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetHomeLink()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, null).VirtualPath;
            return path;
        }
    }
}