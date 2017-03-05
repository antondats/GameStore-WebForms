using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameStore.Pages.Helpers;
using GameStore.Models;

namespace GameStore.Pages
{
    public partial class LoginMembership : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            SessionHelper.GetCart(Session).Clear();
        }
    }
}