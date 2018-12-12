<%@ Page Language="Javascript" %>

<%
    var mycon = new ActiveXObject("ADODB.Connection");
    mycon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Lyes\\Desktop\\Collège Lasalle\\5e Session\\Programmation Internet 1\\prjP55_LyesHadjAissa\\Face2BookProject\\Face2BookProject\\Data\\face2book.accdb");
    var sql = "";
    var lastname = Request.Form("txtLastName"); 
    var firstname = Request.Form("txtFirstName");
    var gender = Request.Form("cboGender");
    var interest = Request.Form("cboInterest");
    var day = Request.Form("cboDay");
    var month = Request.Form("cboMonth");
    var year = Request.Form("cboYear");
    var email = Request.Form("txtEmail");
    var pwd = Request.Form("txtPassword");
    sql = "INSERT INTO MEMBER (LastName, FirstName, Gender, GenderPref, DateOfBirth, Email, [Password]) VALUES('" + lastname + "','" + firstname + "','" + gender + "','" + interest +
    "','"+ year + "-" + month + "-" + day + "','" + email + "','" + pwd + "')";
    mycon.Execute(sql);
    Session("User") = email;
    Response.Redirect("FillInformations.aspx?email="+email);
    
    
    
    %>



<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
</body>
</html>
