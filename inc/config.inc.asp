<%
Session.Timeout=60
dbPath = Server.MapPath(".") & "\dat\Database.accdb"
dbPswd = "201812151210"

connStr = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & dbPath & "; Persist Security Info=False;Jet OLEDB:Database Password=" & dbPswd
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open connStr
Set rs = Server.CreateObject("ADODB.recordset")
%>