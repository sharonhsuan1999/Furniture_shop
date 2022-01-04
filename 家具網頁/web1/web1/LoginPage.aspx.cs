using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserDetailsView.DataBind();
        }

        protected void BT_Register_Click(object sender, EventArgs e)
        {

        }

        protected void BT_Login_Click(object sender, EventArgs e)
        {
            //UserDetailsView.Visible = false;

            if (UserDetailsView.DataItemCount==1)
            {
                Session["id"] = UserDetailsView.Rows[0].Cells[1].Text;
                Session["account"] = UserDetailsView.Rows[1].Cells[1].Text;
                Session["password"] = UserDetailsView.Rows[2].Cells[1].Text;              
                Server.Transfer("~/Default.aspx", false);
                //string strRedirect = "~/Default.aspx";
                //Response.Redirect(strRedirect,true);

                //LB_Password.Text = Session["password"].ToString();
            }
            else
            {
                //if (Session["password"] == null)
                //{
                //    LB_Password.Text = "1";
                //}
                Response.Write("<script> alert('帳號或密碼輸入錯誤!') </script>");
            }
        }

        protected void BT_Login_Command(object sender, CommandEventArgs e)
        {

        }
    }
}