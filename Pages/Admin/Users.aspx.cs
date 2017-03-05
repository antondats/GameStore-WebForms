using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameStore.Models;
using System.Web.ModelBinding;

namespace GameStore.Pages.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        MembershipUserCollection _MyUser = Membership.GetAllUsers();
        public IEnumerable<User> UserCollection
        {
            get { return GetUsers(); }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        public IEnumerable<User> GetUsers()
        {
            List<User> users = new List<User>();
           
            foreach(MembershipUser user in _MyUser)
            {
                User us = new User();
                us.Name = user.UserName;
                us.Email = user.Email;
                us.Role = Roles.GetRolesForUser(us.Name).First();
                users.Add(us);
            }
            return users;
        }

        public void UpdateUser(string email)
        {
            User cur = UserCollection.Where(us => us.Email == email).FirstOrDefault();
            string deleteRole = cur.Role;
            if (cur != null && TryUpdateModel(cur,
               new FormValueProvider(ModelBindingExecutionContext)))
            {
                if (Roles.GetAllRoles().Where(r => r == cur.Role).FirstOrDefault() != null)
                {
                    Roles.RemoveUserFromRole(cur.Name, deleteRole);
                    Roles.AddUserToRole(cur.Name, cur.Role);
                }
            }


        }
    }
}