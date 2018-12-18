<%@ Page Language="javascript" %>

<!DOCTYPE html>

<html>
<head>
    <title>FACE2BOOK</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="Css/Style.css" rel="stylesheet" />
    <script src="Scripts/JQuery.js"></script>
</head>
<body>
    <div class="bgimage">
        <div class="heroText">
            <h1 class="headerSyle">FACE2BOOK!</h1>
            <hr style="width: 350px;background-color: #FF0000;height:3px;"/>
            <p>FACE2BOOK wants to put the excitement back in dating.
                We match your interests to help you break the ice and give you online dating tips
                along the way to make sure you have the best experience possible.
                Get started today.
            </p>

            <button onclick="location.href='SignUp.aspx';" id="btnSignUp" type="button"  class="btn btn-danger btnStyle" style="background-color:#FF0000; color:white;">
                SIGN UP
                <i class="fas fa-plus-circle"></i>
            </button>
            <button onclick="location.href='login.aspx';" id="btnLogin" type="button" class="btn btn-light btnStyle" style="background-color:white; color:#FF0000;">
                LOGIN
                <i class="fas fa-chevron-circle-right"></i>
            </button>

        </div>
    </div>
</body>
</html>
