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
    private int Soluongmua;

	public InfoThucPham()
	{
	}

    public InfoThucPham(String MaTP, int Soluongmua)
    {
        this.MaTP = MaTP;
        this.Soluongmua = Soluongmua;
    }

    public String getMaTP()
    {
        return MaTP;
    }

    public void setSoluongmuathem(int sl)
    {
        this.Soluongmua += sl;
    }
    
}