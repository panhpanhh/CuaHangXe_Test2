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
    
    public partial class KhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KhachHang()
        {
            this.BaoHanhXes = new HashSet<BaoHanhXe>();
            this.DichVus = new HashSet<DichVu>();
            this.HopDongMuaBans = new HashSet<HopDongMuaBan>();
            this.PhieuXuatKhoes = new HashSet<PhieuXuatKho>();
        }
    
        public string MaKhachHang { get; set; }
        public string HoTenKhachHang { get; set; }
        public string DiaChiKhachHang { get; set; }
        public string SoDienThoaiKhachHang { get; set; }
        public string EmailKhachHang { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaoHanhXe> BaoHanhXes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DichVu> DichVus { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HopDongMuaBan> HopDongMuaBans { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuXuatKho> PhieuXuatKhoes { get; set; }
    }
}
