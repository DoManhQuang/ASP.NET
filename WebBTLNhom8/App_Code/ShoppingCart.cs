﻿using System;
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
        if(this.thucPhams == null)
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
    public int getTongTien()
    {
        int tongtien = 0;
        foreach (var item in thucPhams)
        {
            tongtien += (int.Parse(item.getGiatien()) * item.getSoluongmua());
        }
        return tongtien;
    }
}