<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%Session.CodePage=65001%>
<!--#include virtual="lib/jsonObject.class.asp"-->
<%
function Fetch_API(code, message, data)
    Response.LCID = 1046
    set JSON = New jsonObject
    JSON.add "code", code
    JSON.add "message", message
    JSON.add "data", data
    response.AddHeader "Content-Type", "application/json; charset=UTF-8"
    response.write JSON.Serialize()
end function
%>