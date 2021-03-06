﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Reflection;
/// <summary>
/// Summary description for ListDataTables
/// </summary>
public class ListDataTables
{
    public ListDataTables()
    {
        
    }
    public DataTable ToDataTable<T>(List<T> items)
    {
        DataTable dataTable = new DataTable(typeof(T).Name);
        //Get all the properties by using reflection   
        PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
        foreach (PropertyInfo prop in Props)
        {
            //Setting column names as Property names  
            dataTable.Columns.Add(prop.Name);
        }
        foreach (T item in items)
        {
            var values = new object[Props.Length];
            for (int i = 0; i < Props.Length; i++)
            {

                values[i] = Props[i].GetValue(item, null);
            }
            dataTable.Rows.Add(values);
        }

        return dataTable;
    }

    public DataTable ShoppingCart(ShoppingCart cart)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[] {
                    new DataColumn("MaTP", typeof(string)),
                    new DataColumn("TenTP", typeof(string)),
                    new DataColumn("Path", typeof(string)),
                    new DataColumn("Dongia",typeof(string)),
                    new DataColumn("Soluongmua",typeof(string)),
                    new DataColumn("Thanhtien",typeof(string))
        });
        foreach (var item in cart.getDSThucPham())
        {
            string giatien = item.getGiatien();
            string[] spearator = { ",", " VND" };

            // using the method 
            string[] strlist = giatien.Split(spearator,
               StringSplitOptions.RemoveEmptyEntries);
            giatien = strlist[0] + strlist[1];

            int thanhTien = int.Parse(giatien) * item.getSoluongmua();
            
            dt.Rows.Add(item.getMaTP(), item.getTenTP(), item.getPathPhoto(), item.getGiatien(), item.getSoluongmua(), string.Format("{0:#,0 VND}", thanhTien));
        }
        return dt;
    }
}