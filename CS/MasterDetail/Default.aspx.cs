using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using DevExpress.Web;
using DevExpress.Data.Linq;

public partial class _Default : System.Web.UI.Page 
{
    DataClassesDataContext context;
    protected void Page_Init(object sender, EventArgs e) {
        context = new DataClassesDataContext();
        context.ObjectTrackingEnabled = false;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    IQueryable lProducts;

    protected void ASPxGridView2_BeforePerformDataSelect(object sender, EventArgs e)
    {
        ASPxGridView gridView = sender as ASPxGridView;
        lProducts = from l in context.Products
                        where l.CategoryID == Convert.ToInt32(gridView.GetMasterRowKeyValue())
                        select l;
    }

    protected void LinqServerModeDataSource2_Selecting(object sender, DevExpress.Data.Linq.LinqServerModeDataSourceSelectEventArgs e) {
        e.QueryableSource = lProducts;
    }
}
