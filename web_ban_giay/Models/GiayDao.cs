using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace web_ban_giay.Models
{
    public class GiayDao
    {
        //Phương thức truy cứu sản phẩm
        public DataTable traCuuTheoGia(int tu, int den)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BangiayDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Giay where gia>=@tu and gia<=@den", conn);
            cmd.Parameters.AddWithValue("@tu", tu);
            cmd.Parameters.AddWithValue("@den", den);
            SqlDataAdapter dat = new SqlDataAdapter(cmd);
            dat.Fill(dt);
            return dt;
        }
        //phương thức thêm hoa vào csdl
        public int Them(string tengiay, int gia, string hinh, int maloai, DateTime ngaydang, int soluotxem)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BangiayDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into giay (tengiay,gia,hinh,maloai,ngaydang,soluotxem)" +
                                            ("values (@tengiay,@gia,@hinh,@maloai,@ngaydang,@soluotxem) "), conn);
            cmd.Parameters.AddWithValue("@tengiay", tengiay);
            cmd.Parameters.AddWithValue("@gia", gia);
            cmd.Parameters.AddWithValue("@hinh", hinh);
            cmd.Parameters.AddWithValue("@maloai", maloai);
            cmd.Parameters.AddWithValue("@ngaydang", ngaydang);
            cmd.Parameters.AddWithValue("@soluotxem", soluotxem);
            return cmd.ExecuteNonQuery();



        }
    }
}