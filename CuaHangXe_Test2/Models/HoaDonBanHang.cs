//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CuaHangXe_Test2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class HoaDonBanHang
    {
        public string MaHoaDon { get; set; }
        public string MaHopDong { get; set; }
        public Nullable<System.DateTime> NgayLapHoaDon { get; set; }
        public Nullable<decimal> TongSoTien { get; set; }
        public Nullable<decimal> ThueVAT { get; set; }
        public Nullable<decimal> SoTienThanhToan { get; set; }
    
        public virtual HopDongMuaBan HopDongMuaBan { get; set; }
    }
}
