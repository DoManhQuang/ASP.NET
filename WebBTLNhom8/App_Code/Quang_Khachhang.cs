using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Quang_Khachhang
/// </summary>
public class Quang_Khachhang
{
    private String MaKH;
    private String TenKH;
    private String Sdt;
    private String Email;
    public Quang_Khachhang()
    {

    }

    public Quang_Khachhang(string maKH, string tenKH, string sdt, string email)
    {
        MaKH = maKH;
        TenKH = tenKH;
        Sdt = sdt;
        Email = email;
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

    
    public override String ToString()
    {
        return "Khachhang{" + "MaKH=" + MaKH + ", TenKH=" + TenKH + ", Sdt=" + Sdt + ", Email=" + Email + '}';
    }
}