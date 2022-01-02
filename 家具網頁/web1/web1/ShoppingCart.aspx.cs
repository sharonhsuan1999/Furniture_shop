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
            countTotal();
        }
        protected void CartView_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void CartView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        private void countTotal()
        {
            string getTotal = " ";
            int total = 0;
            char[] MyChar = { ',', '.'};

            for (int i = 0; i < CartView.Rows.Count; i++)
            {
                
                if (CartView.Rows[1].Cells[3].FindControl("itemNumLB") != null)
                {
                    getTotal = ((Label)CartView.Rows[1].Cells[2].FindControl("subtotalLB")).Text;
                    getTotal= getTotal.Remove(0, 3);
                    getTotal = getTotal.Replace(",","");
                    //getTotal = getTotal.Replace(".", "");

                    //total += ((Convert.ToInt32(((Label)CartView.Rows[i].Cells[3].FindControl("itemNumLB")).Text))*(Convert.ToInt32(((Label)CartView.Rows[i].Cells[2].FindControl("subtotalLB")).Text)));
                    //total += Convert.ToInt32(((Label)CartView.Rows[i].Cells[2].FindControl("subtotalLB")).Text);
                }    
            }

            CartTotalPrice.Text = "Total:" + total;

        }

    }
}