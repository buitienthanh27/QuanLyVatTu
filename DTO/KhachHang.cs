﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QuanLyVatTu
{
    public class KhachHang
    {
        public string KhachHangID { get; set; }
        public string HoTen { get; set; }
        public string DiaChi { get; set; }
        public string SoDienThoai { get; set; }
        public string Email { get; set; }
        public DateTime NgayTao { get; set; }
        public string GhiChu { get; set; }
    }
}
