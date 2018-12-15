<!--#include virtual="lib/common.asp"-->
<%
Response.AddHeader "Content-Type", "text/html; charset=UTF-8"
If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
    If Request.Form("username") <> "" And Request.Form("password") <> "" Then
        Dim sqlcode
        sqlcode = "select * from member where account='" & Request.Form("username") & "' and password='" & MD5(Request.Form("password"),false) & "'"
        rs.Open sqlcode, conn
        If rs.EOF Then Response.Write "<script>alert('用户名或密码不正确，请重试。');history.go(-1);</script>" : Response.End
        Session("authorized_user") = Request.Form("username")
        If Request.QueryString("service") <> "" Then
            Response.Redirect Request.QueryString("service")
        Else
            Response.Redirect "./default.asp"
        End If
        Response.End
    End If
End If
%>
<!--#include virtual="tpl/login.tpl.htm"-->