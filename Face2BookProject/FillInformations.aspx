<%@  Language="javascript" %>
<%
    var Email = Request.QueryString("email");
    
    
    %>

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
    <div class="bgimage" style="background-image: url('../Picture/beach-couple-dawn-285938.jpg');">
        <!-- Image and text -->
    <nav class="navbar transparent navbar-inverse" >
         <a class="navbar-brand"  style="font-size:30px; color:#FF0000; font-weight:bold;" href="#">
                 FACE2BOOK!
         </a>
    </nav>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-1" style="background-color:transparent; border-radius:3px;">
            
    <form action="UpdateAccount.aspx" method="post">
        <h2>One more step!</h2>
     <div class="form-row">
        <div class="col">
        <label style="color:#FF0000;" for="cboHeight">Height</label>
              <select class="form-control" id="cboHeight" name="cboHeight">
                <%for(var i=140;i<210;i++){ %>
                <option value="<%=i %>"><%=i %></option>
                   <%} %>
                </select>
             </div> 
         <div class="col">
        <label style="color:#FF0000;" for="cboWeight">Weight</label>
              <select class="form-control" id="cboWeight" name="cboWeight">
                <%for(var i=60;i<100;i++){ %>
                <option value="<%=i %>"><%=i %></option>
                   <%} %>
                </select>
     </div>
     <div class="col">
            <label style="color:#FF0000;" for="ColorEyeSelect">Eye colors</label>
            <select class="form-control" id="ColorEyeSelect" name="cboEyes">
                <option value="Black">Black</option>
                <option value="Blue">Blue</option>
                <option value="Green">Green</option>
                <option value="Brown">Brown</option>
             </select>
     </div>       
        </div>
          <div class="form-group">
    <label style="color:#FF0000;" for="txtDescription">Description</label>
    <textarea class="form-control" id="txtDescription" name="txtDescription" rows="3" required></textarea>
     </div>
          <div class="form-group">
    <label style="color:#FF0000;" for="fileControl">Upload your picture</label>
    <input type="file" class="form-control-file" id="fileControl" name="picture" required>
  </div>
        <button  type="submit" class="btn btn-danger">Submit</button>

    </form>
        </div>
            </div>
        </div>
    </div>
</body>
</html>