<%@ Page Language="javascript" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="Css/Style.css" rel="stylesheet" />
    <script src="Scripts/JQuery.js"></script>
</head>
<body>
    <div class="bgimage" style="background-image: url('../Picture/adult-blur-bride-247858.jpg');">
        <!-- Image and text -->
    <nav class="navbar transparent navbar-inverse" >
         <a class="navbar-brand"  style="font-size:30px; color:#FF0000; font-weight:bold;" href="#">
                 FACE2BOOK!
         </a>
    </nav>
        <section class="container">
            <div class="row loginsec">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <img class="img-fluid" style="width: 100%;" src="../Picture/affair-anniversary-asad-1024992.jpg" /> 
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 loginSideStyle">
                    
                    <h4 style="color:#FF0000; margin-top:20px;"> Log in</h4>
                    <p><b>WELCOME BACK TO FACE2BOOK</b></p>
                    <br />

           <form action="CheckAccount.aspx" method="get">
                 <div class="form-group">
                 <label for="InputEmail1">Email address</label>
                  <input type="email" name="txtEmail" required class="form-control" id="InputEmail1" placeholder="Enter email">
                 </div>
                 <div class="form-group">
                  <label for="InputPassword1">Password</label>
                 <input type="password" name="txtPassword" required class="form-control" id="InputPassword1" placeholder="Password">
                </div>
                  <button style="width:350px; margin-top:30px;" type="submit" class="btn btn-danger">Submit</button>
                  <p style="color:red;">
                      <%=Session("Error") %>
                  </p> 
           </form>
                <hr style="width:300px; margin-top:30px;height:1px;"/>
                <p style="text-align:center;">Not a member yet?
                <a id="signuplink" href="SignUp.aspx"><b>Sign up.</b></a>
                    </p>
                </div>
                
                

            </div>
        </section>
    </div>
</body>
</html>
