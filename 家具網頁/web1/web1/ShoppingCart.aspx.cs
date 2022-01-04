using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web1
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["customer_id"] =2;
            //countTotal();

            bool back = false;


            
            if(CartView.Rows.Count==0)
            {
                if (Session["id"] == null)
                    Response.Write("<script> alert('請先登入!') </script>");
                else
                    Response.Write("<script> alert('購物車是空的!') </script>");

                CartTotalPrice.Visible = false;
                PlaceOrder.Visible = false;
                //horizontalDiv.Visible = false;
                back = true;
            }
            else
            {
                CartTotalPrice.Visible =true;
                PlaceOrder.Visible = true;
               // horizontalDiv.Visible = true;
            }

            if(back)
            {
                back = false;
                Server.Transfer("Default.aspx");

            }
        }
        protected void CartView_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
       

        protected void CartView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            errorLB.Text = "";
            errorLB.Visible = false;
            countTotal();
            qtCheck();
            QtGridView.DataBind();
        }

        private void qtCheck()
        {
            int num;
            int qt;
            bool isError = false;

            for (int i = 0; i < QtGridView.Rows.Count; i++)
            {
                if (QtGridView.Rows[i].Cells[1].FindControl("qtNameLB") != null &&
                    QtGridView.Rows[i].Cells[2].FindControl("totalNumLB") != null &&
                    QtGridView.Rows[i].Cells[3].FindControl("checkQtLB") != null)
                {
                    using (Label qtNameLB = (Label)QtGridView.Rows[i].Cells[1].FindControl("qtNameLB"),
                        totalNumLB = (Label)QtGridView.Rows[i].Cells[2].FindControl("totalNumLB"),
                        checkQtLB = (Label)QtGridView.Rows[i].Cells[3].FindControl("checkQtLB"))
                    {
                        num = Convert.ToInt32(totalNumLB.Text);
                        qt = Convert.ToInt32(checkQtLB.Text);
                        if (num > qt)
                        {
                            errorLB.Text += "<br>" + qtNameLB.Text + "庫存不足(剩下" + qt + "個)";
                            isError = true;
                        }
                    }
                }
            }
            if (isError)
            {
                PlaceOrder.Enabled = false;
                errorLB.Visible = true;
            }
        }
        private void countTotal()
        {
            int total = 0;
            string warnMsg = "";

            for (int i = 0; i < CartView.Rows.Count; i++)
            {

                if (CartView.Rows[i].Cells[3].FindControl("itemNumLB") != null)
                {
                    total += ((Convert.ToInt32(((Label)CartView.Rows[i].Cells[3].FindControl("itemNumLB")).Text)) * (Convert.ToInt32(((Label)CartView.Rows[i].Cells[2].FindControl("subtotalLB")).Text)));
                }
                numEditCheck(ref warnMsg, i);
            }

            CartTotalPrice.Text = "Total: NT " + total;
            
            //if (0 == total)
            //{ 
               // PlaceOrder.Enabled = false;
            //}
        }

        private void numEditCheck(ref string msg, int i)
        {
            if (CartView.Rows[i].Cells[3].FindControl("itemNumLB") != null)
            {
                using (Label tempNumLB = (Label)CartView.Rows[i].Cells[3].FindControl("itemNumLB"))
                {
                    if (tempNumLB.Text == "0")
                    {
                        PlaceOrder.Enabled = false;
                        errorLB.Visible = true;
                        errorLB.Text = "(錯誤的數量)";
                        tempNumLB.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        tempNumLB.ForeColor = System.Drawing.Color.Black;
                    }
                }
            }
        }

        protected void CartView_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            
            if (CartView.Rows.Count == 1)
            {
                //CartTotalPrice.Text = "購物車為空，歡迎前往選購！";
                Response.Write("<script> alert('購物車是空的，歡迎前往選購!') </script>");

                CartTotalPrice.Visible = false;
                PlaceOrder.Visible = false;
                errorLB.Visible = false;

                Server.Transfer("Default.aspx");
            }
        }

        protected void editNumLB_TextChanged(object sender, EventArgs e)
        {
            foreach (char ch in ((TextBox)sender).Text)
            {
                if (!Char.IsDigit(ch))
                {
                    ((TextBox)sender).Text = "0";
                }
            }
        }

        protected void PlaceOrder_Click(object sender, EventArgs e)
        {
            updateQt();
        }

        private void updateQt()
        {
            int num;
            int qt;
            for (int i = 0; i < QtGridView.Rows.Count; i++)
            {
                if (QtGridView.Rows[i].Cells[0].FindControl("qtIdLB") != null &&
                    QtGridView.Rows[i].Cells[2].FindControl("totalNumLB") != null &&
                    QtGridView.Rows[i].Cells[3].FindControl("checkQtLB") != null)
                {
                    using (Label qtIdLB = (Label)QtGridView.Rows[i].Cells[0].FindControl("qtIdLB"),
                        totalNumLB = (Label)QtGridView.Rows[i].Cells[2].FindControl("totalNumLB"),
                        checkQtLB = (Label)QtGridView.Rows[i].Cells[3].FindControl("checkQtLB"))
                    {
                        num = Convert.ToInt32(totalNumLB.Text);
                        qt = Convert.ToInt32(checkQtLB.Text);

                        Session["updateQtId"] = Convert.ToInt32(qtIdLB.Text);
                        Session["updateQtNum"] = qt - num;
                        QtDataSource.Update();
                    }
                }
            }
        }
    }
}