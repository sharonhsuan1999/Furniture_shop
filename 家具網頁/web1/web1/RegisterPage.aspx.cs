using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Register_Click(object sender, EventArgs e)
        {
            RegisterSqlData.Insert();
            Response.Write("<script> alert('註冊成功!請重新登入~') </script>");
            string strRedirect = "~/LoginPage.aspx";
            Response.Redirect(strRedirect,true);
        }

       
    }
}