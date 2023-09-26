using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace web_ban_giay.Models
{
    public class LoaiDao
    {
        public DataTable docTatca()
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BangiayDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Loaigiay", conn);
            SqlDataAdapter dat = new SqlDataAdapter(cmd);
            dat.Fill(dt);
            return dt;
        }
    }
}