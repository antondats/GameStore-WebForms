using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

//namespace GameStore.App_Start
namespace GameStore
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(null, "list/{category}/{page}",
                                        "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list", "~/Pages/Listing.aspx");
            routes.MapPageRoute("cart", "cart", "~/Pages/CartView.aspx");

            routes.MapPageRoute("checkout", "checkout", "~/Pages/Checkout.aspx");

            routes.MapPageRoute("admin_orders", "admin/orders", "~/Pages/Admin/Orders.aspx");
            routes.MapPageRoute("admin_games", "admin/games", "~/Pages/Admin/Games.aspx");
            routes.MapPageRoute("admin_users", "admin/users", "~/Pages/Admin/Users.aspx");
            routes.MapPageRoute("recovery_pass", "recovery_password", "~/Pages/PasswordRecovery.aspx");
            routes.MapPageRoute("registration", "registration", "~/Pages/Registration.aspx");
            routes.MapPageRoute("admin_panel", "admin/panel", "~/Pages/Admin/Panel.aspx");
            routes.MapPageRoute("game", "game/{game}", "~/Pages/GameView.aspx");
        }
    }
}