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
            Session["customer_id"] =2;
            //countTotal();
        }
        protected void CartView_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
       

        protected void CartView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            countTotal();
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
            
            if (0 == total)
            {
                PlaceOrder.Enabled = false;
            }
        }

        private void numEditCheck(ref string msg, int i)
        {
            if (CartView.Rows[i].Cells[3].FindControl("itemNumLB") != null)
            {
                using (Label tempNumLB = (Label)CartView.Rows[i].Cells[3].FindControl("itemNumLB"))
                {
                    if (tempNumLB.Text == "0")
                    {
                        msg = "(錯誤的數量)";
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
                CartTotalPrice.Text = "購物車為空，歡迎前往選購！";
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
    }
}