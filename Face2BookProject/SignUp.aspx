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
    <div class="bgimage" style="background-image: url('../Picture/affection-afterglow-backlit-556667.jpg');">
        <!-- Image and text -->
    <nav class="navbar transparent navbar-inverse" >
         <a class="navbar-brand"  style="font-size:30px; color:#FF0000; font-weight:bold;" href="#">
                 FACE2BOOK!
         </a>
    </nav>
        <section class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-12">
                    
                    <h4 style="color:#FF0000;"> Sign up</h4>
                    <p><b>WELCOME TO FACE2BOOK</b></p>

           <form action="CreateAccount.aspx" method="post">
                 <div class="form-row">
                 <div class="form-group col-md-6">
                 <label for="inputLastName">Last Name</label>
                 <input type="text" name="txtLastName" required class="form-control" id="inputLastName" placeholder="Last Name">
                 </div>

                 <div class="form-group col-md-6">
                         <label for="inputFirstName">First Name</label>
                 <input type="text" name="txtFirstName" required class="form-control" id="inputFirstName" placeholder="First Name">
                </div>
                </div>

              <div class="form-row">
              <div class="form-group col-md-6">
                 <label for="inputGender">I'm a</label>
                      <select id="inputGender" name="cboGender" class="form-control">
                             <option selected>Man</option>
                              <option>Women</option>
                        </select>
                </div>
                   <div class="form-group col-md-6">
                 <label for="inputGenderPref">Interested in</label>
                      <select id="inputGenderPref" name="cboInterest" class="form-control">
                             <option selected>Man</option>
                              <option>Women</option>
                        </select>
                </div>
              </div>
                               
              <label for="inputBirthday">Birthday</label>
              <div id="inputBirthday"class="form-row">
               <div class="form-group col-md-4">
                 <label for="inputMonth">Month</label>

                      <select class="form-control" id="inputMonth" name="cboMonth">
                          <option value="1" selected>January</option>
                          <option value="2">February</option>
                          <option value="3">March</option>
                          <option value="4">April</option>
                          <option value="5">May</option>
                          <option value="6">June</option>
                          <option value="7">July</option>
                          <option value="8">August</option>
                          <option value="9">September</option>
                          <option value="10">October</option>
                          <option value="11">November</option>
                          <option value="12">December</option>
                        </select>
                   </div>
                 <div class="form-group col-md-4">
                 <label for="inputDay">Day</label>
                      <select id="inputDay" name="cboDay" class="form-control">
                             <option selected>1</option>
                          <% for(var i=2; i<32; i++){%>
                              <option value="<%=i%>">
                                  <%=i %>
                               <% }%></option>
                        </select>
                     </div>
                   <div class="form-group col-md-4">
                 <label for="inputYear">Year</label>
                      <select id="inputYear" name="cboYear" class="form-control">
                          <option value="2018" selected>2018</option>
                          <% for(var i=1910;i<2018;i++){ %>
                              <option value="<%=i %>">
                                  
                                  <%=i %>
                                  <%}%></option>
                        </select>
                       </div>
              </div>
                 <div class="form-group">
                 <label for="InputEmail1">Email address</label>
                  <input type="email" name="txtEmail" required class="form-control" id="InputEmail1" placeholder="Enter email">
                 </div>
                 <div class="form-group">
                  <label for="InputPassword1">Password</label>
                 <input type="password" name="txtPassword" required class="form-control" id="InputPassword1" placeholder="Password">
                </div>
               <button style="width:350px;" type="submit" class="btn btn-danger">Submit</button>

            </form>                                                 
            </div>
        </section>
    </div>
</body>
</html>
