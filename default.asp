<!--#include virtual="lib/common.asp"-->
<%
Response.AddHeader "Content-Type", "text/html; charset=UTF-8"
If Session("authorized_user") = "" Then Response.Redirect "./authorize.asp?service=" & Server.URLEncode(CStr(Request.ServerVariables("SCRIPT_NAME"))) : Response.End
Response.Write "您已作为：" & Session("authorized_user") & " 登录用户中心。"
%>