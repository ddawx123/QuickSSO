<!--#include virtual="lib/common.asp"-->
<%
Response.AddHeader "Content-Type", "text/html; charset=UTF-8"
Call DestorySession
Response.Redirect "./default.asp"
%>