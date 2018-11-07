<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dxdtlnq" %>

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
                            <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
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
        EnableDelete="True" EnableInsert="True" EnableUpdate="True" 
        onselecting="LinqServerModeDataSource2_Selecting" />                    
    </form>
</body>
</html>
