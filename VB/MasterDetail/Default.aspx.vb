Imports DevExpress.Web.ASPxGridView
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim dataContext As DataClassesDataContext
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        dataContext = New DataClassesDataContext()
        dataContext.ObjectTrackingEnabled = False
    End Sub

    Dim lProducts As IQueryable
    Protected Sub ASPxGridView2_BeforePerformDataSelect(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim gridView As ASPxGridView = sender
        lProducts = From l In dataContext.Products _
        Where (l.CategoryID = Convert.ToInt32(gridView.GetMasterRowKeyValue())) _
        Select l
    End Sub

    Protected Sub LinqServerModeDataSource2_Selecting(ByVal sender As Object, ByVal e As DevExpress.Data.Linq.LinqServerModeDataSourceSelectEventArgs) Handles LinqServerModeDataSource2.Selecting
        e.QueryableSource = lProducts
    End Sub

End Class
