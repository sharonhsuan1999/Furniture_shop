﻿using System;
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
            UserDetailsView.Visible = false;

            if (UserDetailsView.DataItemCount==1)
            {
                Session["account"] = UserDetailsView.Rows[0].Cells[1].Text;
                Session["password"] = UserDetailsView.Rows[1].Cells[1].Text;
                Session["id"] = UserDetailsView.Rows[2].Cells[1].Text;
                //Server.Transfer("~/RegisterPage.aspx", false);
           
                //LB_Password.Text = Session["password"].ToString();
            }
            else
            {
                Response.Write("<script> alert('帳號或密碼輸入錯誤!') </script>");
            }
        }

        protected void BT_Login_Command(object sender, CommandEventArgs e)
        {

        }
    }
}