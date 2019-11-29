using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trangchu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["BTLCSDLWEBConnectionString2"].ToString());
            connection.Open();
            string sql = "select*from tblThucpham";
            SqlDataAdapter sqldata = new SqlDataAdapter(sql, connection);
            DataTable tbble = new DataTable();
            sqldata.Fill(tbble);
            CollectionPager1.PageSize = 9;
            DataList1.DataSourceID = null;
            CollectionPager1.DataSource = tbble.DefaultView;
            CollectionPager1.BindToControl = DataList1;
            DataList1.DataSource = CollectionPager1.DataSourcePaged;

            //datatatcasanpham.DataSource = tbble;
            //datatatcasanpham.DataBind();
            connection.Close();
            connection.Dispose();
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}