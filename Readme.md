# How to implement editable master-detail ASPxGridView bound to a LinqServerModeDataSource


<p>To implement master detail ASPxGridView bound to a LinqServerModeDataSource, it is necessary to use its Selecting event and pass an IQueryable object which will define the data that should be queried from the data base for a certain detail ASPxGridView. To support data editing, you should set LinqServerModeDataSource.EnableEdit(EnableInsert, EnableDelete) properties to true. Also, set the DataContext's ObjectTrackingEnabled property value to false. Attached sample project shows this approach in action. <strong>NOTE</strong>: this project will not work online, so to test it, you should download it, change the connection string in the web.config file and run it on your local machine</p>

<br/>


