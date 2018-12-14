<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%Session.CodePage=65001%>
<!--#include virtual="inc/config.inc.asp"-->
<!--#include virtual="lib/jsonObject.class.asp"-->
<%
Function Fetch_API(code, message, data)
    Response.LCID = 1046
    Set JSON = New jsonObject
    JSON.add "code", code
    JSON.add "message", message
    JSON.add "data", data
    Response.AddHeader "Content-Type", "application/json; charset=UTF-8"
    Response.Write JSON.Serialize()
End Function

Function DestorySession()
    Session.Abandon
End Function
%>