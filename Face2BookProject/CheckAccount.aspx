﻿<%@ Page Language="javascript" %>


<% 
    var mycon = new ActiveXObject("ADODB.Connection");
    mycon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Lyes\\Desktop\\Collège Lasalle\\5e Session\\Programmation Internet 1\\prjP55_LyesHadjAissa\\Face2BookProject\\Face2BookProject\\Data\\face2book.accdb");
    var email = Request.QueryString("txtEmail");
    var psw = Request.QueryString("txtPassword");
    var sql = "SELECT MemberId, Email, [Password] FROM Member"+
    " WHERE Email ='"+ email + "' AND [Password] = '" + psw +"'";
    var myrec = new ActiveXObject("ADODB.Recordset");
    myrec.Open(sql,mycon);

    if(myrec.EOF){
    myrec.Close();
    mycon.Close();
    Session("Error")="Incorrect email or password, please try again";
    Response.Redirect("login.aspx");
    }
    Session("User") = myrec.Fields("Email").Value;
    Response.Redirect("Home.aspx?email="+Session("User"));
    myrec.Close();
    mycon.Close();
    %>










<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
