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
            Session["customer_id"] =1;
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
            string total = " ";
            //int total = 0;
            
            for(int i = 0; i < CartView.Rows.Count; i++)
            {
                if (CartView.Rows[i].Cells[2].FindControl("subtotalLB") != null) 
                {
                    //total = CartView.Rows[0].Cells[2].Text;
                    total += ((Convert.ToInt32(((Label)CartView.Rows[i].Cells[3].FindControl("itemNumLB")).Text))*(Convert.ToInt32(((Label)CartView.Rows[i].Cells[2].FindControl("subtotalLB")).Text)));
                }
            }

            CartTotalPrice.Text = "Total：" + total + "元";

        }

    }
}