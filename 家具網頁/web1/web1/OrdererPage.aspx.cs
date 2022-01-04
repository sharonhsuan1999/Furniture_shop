using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace web1
{
    public partial class OrdererPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                paymentIDLB.Visible = false;
                paymentIDTB.Visible = false;
            }
        }

        protected void checkoutBT_Click(object sender, EventArgs e)
        {
            Session["Address"] = addressList.SelectedValue + addressTB.Text;
            InsertOrdererSql.Insert();

            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();
            SqlCommand getOrderIdCmd = new SqlCommand("select top 1 order_id from[orderTable] where customer_id="+Session["id"]+" order by order_time Desc", orderCon);
            SqlDataReader orderDr;
            orderDr = getOrderIdCmd.ExecuteReader();
            if (orderDr.Read())
            {
                Session["order_id"] = orderDr["order_id"];
            }
            InsertOrdererSql.Update();
            Server.Transfer("lastPage.aspx");
        }

        protected void paymentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(paymentList.SelectedIndex == 1)
            {
                paymentIDLB.Visible = true;
                paymentIDTB.Visible = true;
            }
            else
            {
                paymentIDLB.Visible = false;
                paymentIDTB.Visible = false;
            }
        }

        protected void getList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (getList.SelectedIndex == 0)
            {
                address.Visible = true;
                addressList.Visible = true;
                addressTB.Visible = true;
            }
            else
            {
                address.Visible = false;
                addressList.Visible = false;
                addressTB.Visible = false;
            }
        }
    }
}