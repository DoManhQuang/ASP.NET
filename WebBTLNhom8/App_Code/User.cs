using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    private String MaKH;
    private String TenKH;
    private String Sdt;
    private String Email;
    //public String MaKH { get; set; }
    //public String TenKH { get; set; }
    //public String Sdt { get; set; }
    //public String Email { get; set; }
    public Quang_Khachhang khachhang = null;
    public User()
    {

    }

    public User(String maKH, String tenKH, String sdt, String email)
    {
        this.MaKH = maKH;
        this.TenKH = tenKH;
        this.Sdt = sdt;
        this.Email = email;
        
    }
    public Quang_Khachhang create_khachhang()
    {
        return new Quang_Khachhang(MaKH, TenKH, Sdt, Email);
    }
    public Quang_Khachhang getKhachHang()
    {
        return this.khachhang;
    }
    public String getMaKH()
    {
        return MaKH;
    }

    public void setMaKH(String MaKH)
    {
        this.MaKH = MaKH;
    }

    public String getTenKH()
    {
        return TenKH;
    }

    public void setTenKH(String TenKH)
    {
        this.TenKH = TenKH;
    }

    public String getSdt()
    {
        return Sdt;
    }

    public void setSdt(String Sdt)
    {
        this.Sdt = Sdt;
    }

    public String getEmail()
    {
        return Email;
    }

    public void setEmail(String Email)
    {
        this.Email = Email;
    }
}