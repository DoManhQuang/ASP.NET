using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Danhsachthucphamtheoloai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CollectionPager();
        string web = "Danhsachthucphamtheoloai.aspx";
        string maloai = Request.QueryString["Maloai"];
        web = web + "?Maloai=" + maloai;
        NextPage nextPage = new NextPage(web);
        Session["nextpage"] = nextPage;
    }
    protected void CollectionPager()
    {
        if(Request.QueryString["Maloai"]==null)
        {
            Response.Redirect("Trangchu.aspx");
        }
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["BTLCSDLWEBConnectionString2"].ToString());
        connection.Open();
        string maloai = Request.QueryString["Maloai"].ToString();
        string sql = "SELECT [MaTP], [TenTP], [Dongia], [urlAnh] FROM [tblThucpham] WHERE ([Maloai] = '"+maloai+"')";
        SqlDataAdapter sqldata = new SqlDataAdapter(sql, connection);
        DataTable tbble = new DataTable();
        sqldata.Fill(tbble);
        CollectionPager1.PageSize = 6;
        DataList1.DataSourceID = null;
        CollectionPager1.DataSource = tbble.DefaultView;
        CollectionPager1.BindToControl = DataList1;
        DataList1.DataSource = CollectionPager1.DataSourcePaged;

        //datatatcasanpham.DataSource = tbble;
        //datatatcasanpham.DataBind();
        connection.Close();
        //connection.Dispose();
    }
}