using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_ban_giay.Models;

namespace web_ban_giay
{
    public partial class Themgiay : System.Web.UI.Page
    {
        LoaiDao LoaiDao = new LoaiDao();
        GiayDao giayDao = new GiayDao();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddloai.DataSource = LoaiDao.docTatca();
                ddloai.DataTextField = "tenLoai";
                ddloai.DataValueField = "maLoai";
                ddloai.DataBind();
            }
        }

        protected void btxuly_Click(object sender, EventArgs e)
        {
            // thu thập thông tin sản phẩm cần thêm
            string tengiay = txttengiay.Text;
            int gia = int.Parse(txtgia.Text);
            string hinh = "";
            if (Fhinh.HasFile) // Nếu người dùng có cung cấp ảnh của hoa
            {
                // xử lý upload file
                string path = Server.MapPath("~/Uploads/hinh_san_pham" + "/" + Fhinh.FileName);
                Fhinh.SaveAs(path);
                hinh = Fhinh.FileName;
            }
            else
            {
                hinh = "no_img.jpg";
            }
            int maloai = int.Parse(ddloai.SelectedValue);
            DateTime ngaydang = clngaycapnhat.SelectedDate;

            int kq = giayDao.Them(tengiay, gia, hinh, maloai, ngaydang, 0);
            if (kq > 0)
            {
                lblthongbao.Text = "Đã thêm thanh công một sản phẩm";
            }
            else
            {
                lblthongbao.Text = "Thất bại";
            }
        }
    }
}