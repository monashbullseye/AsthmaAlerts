using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsthmaApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Authenticate(object sender, AuthenticateEventArgs e)
        {
            AccessDataSource1.SelectCommand = "SELECT * FROM login WHERE User_name= '" + LoginBtn.UserName + "' AND User_password= '" + LoginBtn.Password + "'";
            AccessDataSource1.Select(DataSourceSelectArguments.Empty);
        }
    }
}