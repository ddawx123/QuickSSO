<!--#include virtual="lib/common.asp"-->
<%
If Session("authorized_user") <> "" Then
    Call Fetch_API(200,"已登录",array(Session("authorized_user")))
Else
    Call Fetch_API(403,"未登录",array())
End If
%>