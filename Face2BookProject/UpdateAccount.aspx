<%@ Language="javascript" %>

<%
    var weight = parseInt(Request.Form("cboWeight"));
    var height = parseInt(Request.Form("cboHeight"));
    var description = Request.Form("txtDescription");
    var picture = Request.Form("picture");
    var mycon = new ActiveXObject("ADODB.Connection");
    mycon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Lyes\\Desktop\\Collège Lasalle\\5e Session\\Programmation Internet 1\\prjP55_LyesHadjAissa\\Face2BookProject\\Face2BookProject\\Data\\face2book.accdb");
    var sql = "UPDATE MEMBER"+
              " SET Weight = " + weight + ", height = " + height + ", Description = '" + description
    + "' WHERE Email =('" + Session("User") + "')";
    mycon.Execute(sql);
    Response.Redirect("Home.aspx?email="Session("User"));
    %>

<html>
<head>
    <title></title>
</head>
<body>
</body>
</html>
