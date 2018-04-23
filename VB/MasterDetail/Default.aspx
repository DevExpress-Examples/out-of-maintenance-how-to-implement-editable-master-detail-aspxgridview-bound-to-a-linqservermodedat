<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v8.2, Version=8.2.2.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.2.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Data.v8.2.Linq, Version=8.2.2.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4" namespace="DevExpress.Data.Linq" tagprefix="dxdtlnq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="LinqServerModeDataSource1" 
            KeyFieldName="CategoryID">
            <Templates>
                <DetailRow>
                    <dxwgv:ASPxGridView ID="ASPxGridView2" runat="server" KeyFieldName="ProductID"
                        AutoGenerateColumns="False" DataSourceID="LinqServerModeDataSource2" 
                        onbeforeperformdataselect="ASPxGridView2_BeforePerformDataSelect">
                        <Columns>
                            <dxwgv:GridViewCommandColumn VisibleIndex="0">
                                <EditButton Visible="True">
                                </EditButton>
                            </dxwgv:GridViewCommandColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="ProductID" VisibleIndex="0">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="3">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="4">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="9">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10">
                            </dxwgv:GridViewDataCheckColumn>
                        </Columns>
                        <SettingsDetail IsDetailGrid="True" />
                    </dxwgv:ASPxGridView>
                </DetailRow>
            </Templates>
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="0">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsDetail ShowDetailRow="True" />
        </dxwgv:ASPxGridView>    
    </div>
    <dxdtlnq:LinqServerModeDataSource ID="LinqServerModeDataSource1" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" TableName="Categories" />
                    <dxdtlnq:LinqServerModeDataSource ID="LinqServerModeDataSource2" runat="server" 
                    ContextTypeName="DataClassesDataContext" TableName="Products" 
        EnableDelete="True" EnableInsert="True" EnableUpdate="True" />                        
    </form>
</body>
</html>
