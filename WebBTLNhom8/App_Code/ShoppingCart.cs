using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ShoppingCart
/// </summary>
public class ShoppingCart
{
    private List<InfoThucPham> thucPhams = null;
    public ShoppingCart()
    {
        if (this.thucPhams == null)
        {
            thucPhams = new List<InfoThucPham>();
        }
    }

    public ShoppingCart(List<InfoThucPham> thucPhams)
    {
        this.thucPhams = thucPhams;
    }

    public List<InfoThucPham> getDSThucPham()
    {
        return this.thucPhams;
    }

    public int getLengthDS()
    {
        if (thucPhams == null)
        {
            return 0;
        }
        return this.thucPhams.Count();
    }

    public int getTongTien()
    {
        int tongtien = 0;
        foreach (var item in thucPhams)
        {
            string giatien = item.getGiatien();
            string[] spearator = { ",", " VND" };

            // using the method 
            string[] strlist = giatien.Split(spearator,
               StringSplitOptions.RemoveEmptyEntries);
            giatien = strlist[0] + strlist[1];
            tongtien += (int.Parse(giatien) * item.getSoluongmua());
        }
        return tongtien;
    }
}