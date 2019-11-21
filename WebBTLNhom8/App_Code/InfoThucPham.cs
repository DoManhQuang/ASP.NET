using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InfoThucPham
/// </summary>
public class InfoThucPham
{
    private String MaTP;
    private String TenTP;
    private String giatien;
    private int Soluongmua;
    private String pathphoto;

    public InfoThucPham()
    {
    }

    public InfoThucPham(String MaTP, String TenTP, String giatien, int Soluongmua)
    {
        this.MaTP = MaTP;
        this.TenTP = TenTP;
        this.giatien = giatien;
        this.Soluongmua = Soluongmua;
    }

    public InfoThucPham(string maTP, string tenTP, string giatien, int soluongmua, string pathphoto)
    {
        MaTP = maTP;
        TenTP = tenTP;
        this.giatien = giatien;
        Soluongmua = soluongmua;
        this.pathphoto = pathphoto;
    }

    public String getPathPhoto()
    {
        return pathphoto;
    }

    public void setPathPhoto(String path)
    {
        this.pathphoto = path;
    }

    public String getMaTP()
    {
        return MaTP;
    }

    public void setMaTP(String MaTP)
    {
        this.MaTP = MaTP;
    }

    public String getTenTP()
    {
        return TenTP;
    }

    public void setTenTP(String TenTP)
    {
        this.TenTP = TenTP;
    }

    public String getGiatien()
    {
        return giatien;
    }

    public void setGiatien(String giatien)
    {
        this.giatien = giatien;
    }

    public int getSoluongmua()
    {
        return Soluongmua;
    }

    public void setSoluongmua(int Soluongmua)
    {
        this.Soluongmua = Soluongmua;
    }
    public void setSoluongmuathem(int sl)
    {
        this.Soluongmua += sl;
    }

    public override String ToString()
    {
        return "ThucPham{" + "MaTP=" + MaTP + ", TenTP=" + TenTP + ", giatien=" + giatien + ", Soluongmua=" + Soluongmua + ", Pathphoto= " + pathphoto + '}';
    }
}