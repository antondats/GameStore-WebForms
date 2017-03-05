using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;
using GameStore.Models;
using GameStore.Models.Repository;
using GameStore.Pages.Helpers;

namespace GameStore.Pages
{
    public partial class GameView : System.Web.UI.Page
    {
        Repository repository = new Repository();
        public Game Game { get; set; }
        public string BackUrl
        {
            get
            {
                if (SessionHelper.Get<string>(Session, SessionKey.RETURN_URL) != null)
                    return SessionHelper.Get<string>(Session, SessionKey.RETURN_URL);
                else return RouteTable.Routes.GetVirtualPath(null, null).VirtualPath;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Game = repository.Games.Where(g => g.Name == Name).FirstOrDefault();

            if (IsPostBack)
            {
                if (Request.Form["add"] != null)
                {
                        SessionHelper.GetCart(Session).AddItem(Game, 1);
                        SessionHelper.Set(Session, SessionKey.RETURN_URL,
                            BackUrl);

                        Response.Redirect(RouteTable.Routes
                            .GetVirtualPath(null, "cart", null).VirtualPath);
                    
                }
            }
        }

        public string Name
        {
            get
            {
                string name = (string)Page.RouteData.Values["game"];
                return name.Replace('_', ' ');
            }
        }
    }
}