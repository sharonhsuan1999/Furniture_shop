using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace web1
{
    public partial class lastPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection orderConnect = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderConnect.Open();
            SqlCommand orderCommand = new SqlCommand("select top 1 order_Id from [orderTable] order by order_Id Desc", orderConnect);
            SqlDataReader orderRead;
            orderRead = orderCommand.ExecuteReader();
            if (orderRead.Read())
            {
                orderIDNum.Text = orderRead["order_Id"] + "號訂單";
            }
        }

        //protected void ToIndexBt_Click(object sender, EventArgs e)
        //{
            //Server.Transfer("Default.aspx");
        //}
    }
}