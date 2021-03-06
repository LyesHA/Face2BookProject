﻿<%@ Page Language="javascript" %>
<% 
    var mycon = new ActiveXObject("ADODB.Connection");
    mycon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Lyes\\Desktop\\Collège Lasalle\\5e Session\\Programmation Internet 1\\prjP55_LyesHadjAissa\\Face2BookProject\\Face2BookProject\\Data\\face2book.accdb");
    var email = Request.QueryString("email");
    if(email==""){
        email = Request.Form("email");
    }
    var sql = "SELECT Member.LastName, Member.Gender, Member.EyeColor, Member.Weight, Member.Height, Member.FirstName, Member.DateOfBirth, Member.Description" + 
          " FROM Member WHERE Gender = ( SELECT GenderPref FROM MEMBER WHERE Email = '" + email + "')" + 
    " AND Email <> '" + Session("User") + "'";

    var myrec = new ActiveXObject("ADODB.Recordset");
    myrec.Open(sql,mycon);

%>


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
   <nav class="navbar navbar-expand-sm fixed-top navbar-dark" style="background-color:transparent;">
  <!-- Navbar content -->
           <a class="navbar-brand" style="font-size:30px; color:#FF0000; font-weight:bold;" href="#">FACE2BOOK!</a>

</nav>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" >
  <img class="img-fluid" style="margin-top:-80px!important;" src="Picture/adult-affection-beard-842546.jpg"  />
  <div class="carousel-caption d-none d-md-block" style="top: 50%;transform: translateY(-10%);">
    <h1>WELCOME TO FACE2BOOK!</h1>
    <p style="font-size:20px;">MEET YOUR LOVE.</p>
  </div>
    </div>
</div>
        </div>
    <%
        if(!myrec.EOF){%>
    <div class="container jumbotron" style="margin-top:50px;">
        <div>
            <form action="Search.aspx" method="post">
                   <div class="form-row" style="margin-bottom:20px;">
        <div class="col">
        <label style="color:#FF0000;" for="cboHeight">Height</label>
              <select class="form-control" id="cboHeightFrom" name="cboHeightFrom">
                                  <option value="" selected></option>
                <%for(var i=140;i<210;i++){ %>
                <option value="<%=i %>"><%=i %></option>
                   <%} %>
                </select>
        <font color="red">To </font>
            <select class="form-control" id="cboHeightTo" name="cboHeightTo">
                                <option value="" selected></option>
                <%for(var i=140;i<210;i++){ %>
                <option value="<%=i %>"><%=i %></option>
                   <%} %>
                </select>
             </div> 
         <div class="col">
        <label style="color:#FF0000;" for="cboWeight">Weight</label>
              <select class="form-control" id="cboWeight" name="cboWeightFrom">
                                  <option value="" selected></option>
                <%for(var i=60;i<100;i++){ %>
                <option value="<%=i %>"><%=i %></option>
                   <%} %>
                </select>
             <font color="red">To </font>
             <select class="form-control" id="cboWeightFrom" name="cboWeightTo">
                                 <option value="" selected></option>
                <%for(var i=60;i<100;i++){ %>
                <option value="<%=i %>"><%=i %></option>
                   <%} %>
                </select>
     </div>
     <div class="col">
            <label style="color:#FF0000;" for="ColorEyeSelect">Eye colors</label>
            <select class="form-control" id="ColorEyeSelect" name="cboEyes">
                <option value="" selected></option>
                <option value="Black">Black</option>
                <option value="Blue">Blue</option>
                <option value="Green">Green</option>
                <option value="Brown">Brown</option>
             </select>
     </div>       
        </div>
                
                <input class="btn btn-danger" type="submit" value = "Search" />
                <input class="btn btn-danger" type="reset" value = "Reset" />
            </form>
        </div>
      <div class="row align-items-center">
<%while(!myrec.EOF){ %>
        <div class="col-lg-4">
    <div class="card " style="">
        <%if(myrec.Fields("Gender").Value == "Man"){%>
              <img class="card-img-top" src="Picture/attractive-black-and-white-boy-25733.jpg" alt="Card image cap">
        <%}else{ %>
             <img class="card-img-top" src="Picture/attractive-beautiful-beautiful-girl-458766.jpg" alt="Card image cap">

         <%  } %>
  <div class="card-body">
    <h5 class="card-title"><%=myrec.Fields("FirstName").Value %> <%=myrec.Fields("LastName").Value%></h5>
    <p class="card-text"><font color="red"> Weight : </font><%=myrec.Fields("Weight").Value%></p>
    <p class="card-text"><font color="red"> Height : </font><%=myrec.Fields("Height").Value%></p>
    <p class="card-text"><font color="red"> Eye Colors : </font> <%=myrec.Fields("EyeColor").Value%></p>
    <p class="card-text"><%=myrec.Fields("Description").Value%></p>
    <a href="#" class="btn btn-danger">Send Message</a>
  </div>

    </div>
        </div>
        <% 
         myrec.MoveNext();
        }
            }   
        myrec.Close();
        mycon.Close();
                
%>

    </div>

        <nav style="margin-top:20px;" aria-label="...">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
    <li class="page-item">
      <a class="page-link" href="#">2 </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

        </div>
     
</body>
</html>