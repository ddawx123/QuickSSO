<!--#include virtual="lib/common.asp"-->
<%
Response.AddHeader "Content-Type", "text/html; charset=UTF-8"
If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
    If Request.Form("username") <> "" And Request.Form("password") <> "" Then
        sqlcode = "select * from member where account='" & Request.Form("username") & "'"
        rs.Open sqlcode, conn
        If rs.EOF = False Then Response.Write "<script>alert('用户名已存在，请换一个更有创意的名字吧！');history.go(-1);</script>" : Response.End
        sqlcode = "insert into member (account,password) values ('" & Request.Form("username") & "','" & MD5(Request.Form("password"),false) & "')"
        rs.Open sqlcode, conn
        If rs.EOF Then Response.Write "<script>alert('数据操作超时，注册可能失败。');history.go(-1);</script>" : Response.End
        Response.Write "<script>alert('用户注册成功！');history.go(-1);</script>" : Response.End
    End If
End If
%>