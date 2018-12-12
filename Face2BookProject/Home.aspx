<%@ Page Language="javascript" %>
<% 
    var mycon = new ActiveXObject("ADODB.Connection");
    mycon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Lyes\\Desktop\\Collège Lasalle\\5e Session\\Programmation Internet 1\\prjP55_LyesHadjAissa\\Face2BookProject\\Face2BookProject\\Data\\face2book.accdb");
    var email = Request.QueryString("email");
    if(email==""){
        email = Request.Form("email");
    }
    var sql = "SELECT FirstName, LastName, Gender, GenderPref, DateOfBirth" +
                " FROM Member WHERE Email ='" + email + "'";
    var myrec = new ActiveXObject("ADODB.Recordset");
    myrec.Open(sql,mycon);

%>

<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
    <%
        if(!myrec.EOF){%>
        <h1><%=myrec.Fields("FirstName").Value%></h1>
    <h2><%email %></h2>
     <% myrec.Close();
        mycon.Close();
        }%>
</body>
</html>
