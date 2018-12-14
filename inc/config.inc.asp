<%
Session.Timeout=60
Dim dbFile

dbFile = "C:\Users\dingstudio\source\repos\QuickSSO\dat\Database.mdb"

Set conn = Server.CreateObject("ADODB.Connection")
conn.Provider = "Microsoft.Jet.OLEDB.4.0"
conn.Open dbFile
Set rs = Server.CreateObject("ADODB.recordset")
%>