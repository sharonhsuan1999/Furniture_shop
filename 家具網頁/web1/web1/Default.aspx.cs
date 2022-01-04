using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace web1
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            classGridView.DataBind();
            orderProductGridView.DataBind();
            string str = "畢業出清全館免運 ! 新年1/1~1/7，滿2000送精美小禮品，優惠錯過就不再，要買要快唷~";
            string text = "<MARQUEE>" + str + "</MARQUEE>";
            Label1.Text = text;

            
            if (Session["id"] != null)
            {
                Session["name"] = HelloUserDetailsView.Rows[1].Cells[1].Text;
                Session["phone"] = HelloUserDetailsView.Rows[2].Cells[1].Text;

                LB_HelloUser.Text = "Hello~ " + Session["name"].ToString();
            }
            else
            {
                LB_HelloUser.Text = "";
            }
        }


        protected void chairLKB_Click(object sender, EventArgs e)
        {
            Session["class"] = chairLKB.Text;
            image1.ImageUrl = "./pic/椅子/ALEFJALL辦公椅.jpg";
            image2.ImageUrl = "./pic/椅子/FJALLBERGET辦公椅.jpg";
            image3.ImageUrl = "./pic/椅子/INGOLF餐椅.jpg";
            image4.ImageUrl = "./pic/椅子/BERGMUND吧檯椅.jpg";
            image5.ImageUrl = "./pic/椅子/MATCHSPEL電競椅.jpg";
           
            image1.Visible = true;
            image2.Visible = true;
            image3.Visible = true;
            image4.Visible = true;
            image5.Visible = true;

            name1_LB.Visible = true;
            name2_LB.Visible = true;
            name3_LB.Visible = true;
            name4_LB.Visible = true;
            name5_LB.Visible = true;

            money1_LB.Visible = true;
            money2_LB.Visible = true;
            money3_LB.Visible = true;
            money4_LB.Visible = true;
            money5_LB.Visible = true;

            Qt1_LB.Visible = true;
            Qt2_LB.Visible = true;
            Qt3_LB.Visible = true;
            Qt4_LB.Visible = true;
            Qt5_LB.Visible = true;

            add1_BT.Visible = true;
            add2_BT.Visible = true;
            add3_BT.Visible = true;
            add4_BT.Visible = true;
            add5_BT.Visible = true;


            name1_LB.Text = showProductGridView.Rows[0].Cells[1].Text;
            name2_LB.Text = showProductGridView.Rows[1].Cells[1].Text;
            name3_LB.Text = showProductGridView.Rows[2].Cells[1].Text;
            name4_LB.Text = showProductGridView.Rows[3].Cells[1].Text;
            name5_LB.Text = showProductGridView.Rows[4].Cells[1].Text;
            money1_LB.Text = "$"+ showProductGridView.Rows[0].Cells[2].Text;
            money2_LB.Text = "$" + showProductGridView.Rows[1].Cells[2].Text;
            money3_LB.Text = "$" + showProductGridView.Rows[2].Cells[2].Text;
            money4_LB.Text = "$" + showProductGridView.Rows[3].Cells[2].Text;
            money5_LB.Text = "$" + showProductGridView.Rows[4].Cells[2].Text;
            Qt1_LB.Text = "庫存:" + showProductGridView.Rows[0].Cells[3].Text;
            Qt2_LB.Text = "庫存:" + showProductGridView.Rows[1].Cells[3].Text;
            Qt3_LB.Text = "庫存:" + showProductGridView.Rows[2].Cells[3].Text;
            Qt4_LB.Text = "庫存:" + showProductGridView.Rows[3].Cells[3].Text;
            Qt5_LB.Text = "庫存:" + showProductGridView.Rows[4].Cells[3].Text;



        }

        protected void tableLKB_Click(object sender, EventArgs e)
        {
            Session["class"] = tableLKB.Text;
            image1.ImageUrl = "./pic/桌子/MICKE書桌.jpg";
            image2.ImageUrl = "./pic/桌子/LISABO咖啡桌.jpg";
            image3.ImageUrl = "./pic/桌子/LANEBERG餐桌.jpg";
            image4.ImageUrl = "./pic/桌子/SYVDE化妝台.jpg";
            image5.ImageUrl = "./pic/桌子/TOMMARYD吧檯桌.jpg";
            

            image1.Visible = true;
            image2.Visible = true;
            image3.Visible = true;
            image4.Visible = true;
            image5.Visible = true;

            name1_LB.Visible = true;
            name2_LB.Visible = true;
            name3_LB.Visible = true;
            name4_LB.Visible = true;
            name5_LB.Visible = true;

            money1_LB.Visible = true;
            money2_LB.Visible = true;
            money3_LB.Visible = true;
            money4_LB.Visible = true;
            money5_LB.Visible = true;

            Qt1_LB.Visible = true;
            Qt2_LB.Visible = true;
            Qt3_LB.Visible = true;
            Qt4_LB.Visible = true;
            Qt5_LB.Visible = true;

            add1_BT.Visible = true;
            add2_BT.Visible = true;
            add3_BT.Visible = true;
            add4_BT.Visible = true;
            add5_BT.Visible = true;

            name1_LB.Text = showProductGridView.Rows[5].Cells[1].Text;
            name2_LB.Text = showProductGridView.Rows[6].Cells[1].Text;
            name3_LB.Text = showProductGridView.Rows[7].Cells[1].Text;
            name4_LB.Text = showProductGridView.Rows[8].Cells[1].Text;
            name5_LB.Text = showProductGridView.Rows[9].Cells[1].Text;
            money1_LB.Text = "$" + showProductGridView.Rows[5].Cells[2].Text;
            money2_LB.Text = "$" + showProductGridView.Rows[6].Cells[2].Text;
            money3_LB.Text = "$" + showProductGridView.Rows[7].Cells[2].Text;
            money4_LB.Text = "$" + showProductGridView.Rows[8].Cells[2].Text;
            money5_LB.Text = "$" + showProductGridView.Rows[9].Cells[2].Text;
            Qt1_LB.Text = "庫存:" + showProductGridView.Rows[5].Cells[3].Text;
            Qt2_LB.Text = "庫存:" + showProductGridView.Rows[6].Cells[3].Text;
            Qt3_LB.Text = "庫存:" + showProductGridView.Rows[7].Cells[3].Text;
            Qt4_LB.Text = "庫存:" + showProductGridView.Rows[8].Cells[3].Text;
            Qt5_LB.Text = "庫存:" + showProductGridView.Rows[9].Cells[3].Text;

            
        }

        protected void cabinetLKB_Click(object sender, EventArgs e)
        {
            Session["class"] = cabinetLKB.Text;
            image1.ImageUrl = "./pic/櫃子/HEMNES玻璃櫃.jpg";
            image2.ImageUrl = "./pic/櫃子/BILLY咖啡書櫃.jpg";
            image3.ImageUrl = "./pic/櫃子/BILLY書櫃.jpg";
            image4.ImageUrl = "./pic/櫃子/IDANAS床邊桌.jpg";
            image5.ImageUrl = "./pic/櫃子/NORDKISA衣櫃.jpg";
        
            image1.Visible = true;
            image2.Visible = true;
            image3.Visible = true;
            image4.Visible = true;
            image5.Visible = true;

            name1_LB.Visible = true;
            name2_LB.Visible = true;
            name3_LB.Visible = true;
            name4_LB.Visible = true;
            name5_LB.Visible = true;

            money1_LB.Visible = true;
            money2_LB.Visible = true;
            money3_LB.Visible = true;
            money4_LB.Visible = true;
            money5_LB.Visible = true;

            Qt1_LB.Visible = true;
            Qt2_LB.Visible = true;
            Qt3_LB.Visible = true;
            Qt4_LB.Visible = true;
            Qt5_LB.Visible = true;

            add1_BT.Visible = true;
            add2_BT.Visible = true;
            add3_BT.Visible = true;
            add4_BT.Visible = true;
            add5_BT.Visible = true;

            name1_LB.Text = showProductGridView.Rows[10].Cells[1].Text;
            name2_LB.Text = showProductGridView.Rows[11].Cells[1].Text;
            name3_LB.Text = showProductGridView.Rows[12].Cells[1].Text;
            name4_LB.Text = showProductGridView.Rows[13].Cells[1].Text;
            name5_LB.Text = showProductGridView.Rows[14].Cells[1].Text;
            money1_LB.Text = "$" + showProductGridView.Rows[10].Cells[2].Text;
            money2_LB.Text = "$" + showProductGridView.Rows[11].Cells[2].Text;
            money3_LB.Text = "$" + showProductGridView.Rows[12].Cells[2].Text;
            money4_LB.Text = "$" + showProductGridView.Rows[13].Cells[2].Text;
            money5_LB.Text = "$" + showProductGridView.Rows[14].Cells[2].Text;
            Qt1_LB.Text = "庫存:" + showProductGridView.Rows[10].Cells[3].Text;
            Qt2_LB.Text = "庫存:" + showProductGridView.Rows[11].Cells[3].Text;
            Qt3_LB.Text = "庫存:" + showProductGridView.Rows[12].Cells[3].Text;
            Qt4_LB.Text = "庫存:" + showProductGridView.Rows[13].Cells[3].Text;
            Qt5_LB.Text = "庫存:" + showProductGridView.Rows[14].Cells[3].Text;

         
        }

        protected void lampLKB_Click(object sender, EventArgs e)
        {
            Session["class"] = lampLKB.Text;
            image1.ImageUrl = "./pic/燈具/ARSTID桌燈.jpg";
            image2.ImageUrl = "./pic/燈具/AROD工作燈.jpg";
            image3.ImageUrl = "./pic/燈具/MISTERHULT桌燈.jpg";
            image4.ImageUrl = "./pic/燈具/SIMRISHAMN桌燈.jpg";
            image5.ImageUrl = "./pic/燈具/TARNABY桌燈.jpg";

            image1.Visible = true;
            image2.Visible = true;
            image3.Visible = true;
            image4.Visible = true;
            image5.Visible = true;

            name1_LB.Visible = true;
            name2_LB.Visible = true;
            name3_LB.Visible = true;
            name4_LB.Visible = true;
            name5_LB.Visible = true;

            money1_LB.Visible = true;
            money2_LB.Visible = true;
            money3_LB.Visible = true;
            money4_LB.Visible = true;
            money5_LB.Visible = true;

            Qt1_LB.Visible = true;
            Qt2_LB.Visible = true;
            Qt3_LB.Visible = true;
            Qt4_LB.Visible = true;
            Qt5_LB.Visible = true;

            add1_BT.Visible = true;
            add2_BT.Visible = true;
            add3_BT.Visible = true;
            add4_BT.Visible = true;
            add5_BT.Visible = true;

            name1_LB.Text = showProductGridView.Rows[15].Cells[1].Text;
            name2_LB.Text = showProductGridView.Rows[16].Cells[1].Text;
            name3_LB.Text = showProductGridView.Rows[17].Cells[1].Text;
            name4_LB.Text = showProductGridView.Rows[18].Cells[1].Text;
            name5_LB.Text = showProductGridView.Rows[19].Cells[1].Text;
            money1_LB.Text = "$" + showProductGridView.Rows[15].Cells[2].Text;
            money2_LB.Text = "$" + showProductGridView.Rows[16].Cells[2].Text;
            money3_LB.Text = "$" + showProductGridView.Rows[17].Cells[2].Text;
            money4_LB.Text = "$" + showProductGridView.Rows[18].Cells[2].Text;
            money5_LB.Text = "$" + showProductGridView.Rows[19].Cells[2].Text;
            Qt1_LB.Text = "庫存:" + showProductGridView.Rows[15].Cells[3].Text;
            Qt2_LB.Text = "庫存:" + showProductGridView.Rows[16].Cells[3].Text;
            Qt3_LB.Text = "庫存:" + showProductGridView.Rows[17].Cells[3].Text;
            Qt4_LB.Text = "庫存:" + showProductGridView.Rows[18].Cells[3].Text;
            Qt5_LB.Text = "庫存:" + showProductGridView.Rows[19].Cells[3].Text;

        }

        


        protected void add1_Click1(object sender, EventArgs e)
        {
            if(Session["id"]==null)
                Response.Write("<script> alert('請先登入!') </script>");
            else
            {
                Response.Write("<script> alert('已加入購物車!') </script>");
                Session["product_id"] = classGridView.Rows[0].Cells[4].Text;
                orderProductDataSource.Insert();
            }
            

        }

        protected void add2_Click(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Write("<script> alert('請先登入!') </script>");
            else
            {
                Response.Write("<script> alert('已加入購物車!') </script>");
                Session["product_id"] = classGridView.Rows[1].Cells[4].Text;
                orderProductDataSource.Insert();
            }
            
        }

        protected void add3_Click1(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Write("<script> alert('請先登入!') </script>");
            else
            {
                Response.Write("<script> alert('已加入購物車!') </script>");
                Session["product_id"] = classGridView.Rows[2].Cells[4].Text;
                orderProductDataSource.Insert();
            }
            
        }

        protected void add4_Click1(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Write("<script> alert('請先登入!') </script>");
            else
            {
                Response.Write("<script> alert('已加入購物車!') </script>");
                Session["product_id"] = classGridView.Rows[3].Cells[4].Text;
                orderProductDataSource.Insert();
            }
            
        }

        protected void add5_Click1(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Write("<script> alert('請先登入!') </script>");
            else
            {
                Response.Write("<script> alert('已加入購物車!') </script>");
                Session["product_id"] = classGridView.Rows[4].Cells[4].Text;
                orderProductDataSource.Insert();
            }
            
        }

        protected void truncateTableBT_Click(object sender, EventArgs e)
        {
            //將資料庫連結，需要一個連結物件
            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();

            //重置訂單
            // 重置訂購單
            SqlCommand orderProductTableTruncateCmd = new SqlCommand("truncate table orderProductTable", orderCon);
            orderProductTableTruncateCmd.ExecuteNonQuery();
            // 重置訂購人相關資訊表單
            SqlCommand orderTableTruncateCmd = new SqlCommand("truncate table orderTable", orderCon);
            orderTableTruncateCmd.ExecuteNonQuery();

        }
    }
}