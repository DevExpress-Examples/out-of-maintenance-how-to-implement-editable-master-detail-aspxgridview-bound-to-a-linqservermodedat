<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128541166/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E313)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/MasterDetail/Default.aspx) (VB: [Default.aspx](./VB/MasterDetail/Default.aspx))
* [Default.aspx.cs](./CS/MasterDetail/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/MasterDetail/Default.aspx.vb))
<!-- default file list end -->
# How to implement editable master-detail ASPxGridView bound to a LinqServerModeDataSource


<p>To implement master detail ASPxGridView bound to a LinqServerModeDataSource, it is necessary to use its Selecting event and pass an IQueryable object which will define the data that should be queried from the data base for a certain detail ASPxGridView. To support data editing, you should set LinqServerModeDataSource.EnableEdit(EnableInsert, EnableDelete) properties to true. Also, set the DataContext's ObjectTrackingEnabled property value to false. Attached sample project shows this approach in action. <strong>NOTE</strong>: this project will not work online, so to test it, you should download it, change the connection string in the web.config file and run it on your local machine</p>

<br/>


