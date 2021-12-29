using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web1
{
    public partial class OrdererPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkoutBT_Click(object sender, EventArgs e)
        {
            Session["Address"] = addressList.SelectedValue + addressTB.Text;
        }
    }
}