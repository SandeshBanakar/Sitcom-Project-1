<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="btDB.ticketdb"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Booking History</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="../img/map-pin-dynamic-premium.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Navbar Start -->
    <div class="container-fluid nav-bar p-0">
        <div class="container-lg p-0">
            <nav class="navbar navbar-expand-lg bg-secondary navbar-dark">
                <a href="UserHome.jsp" class="navbar-brand">
                    <h1 class="m-0 text-white display-4"><span class="text-primary">S</span>it<span class="text-primary">C</span>om</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="UserHome.jsp" class="nav-item nav-link">Home</a>
                        <a href="profile.jsp" class="nav-item nav-link">Profile</a>
                        <a href="userticket.jsp" class="nav-item nav-link">Ticket Booking</a>
                        <a href="" class="nav-item nav-link active">Booking History</a>

                        <!--                         
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu border-0 rounded-0 m-0">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="single.html" class="dropdown-item">Blog Detail</a>
                            </div>
                        </div> -->
                        
                        <a href="../index.html" class="nav-item nav-link">Logout</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->


        <!-- Page Header Start -->
        <div class="container-fluid page-header d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5 mb-5">
            <h1 class="display-4 text-white mb-3 mt-0 mt-lg-5">Booking History</h1>
            <div class="d-inline-flex text-white">
                <p class="m-0"><a class="text-white" href="UserHome.jsp">User</a></p>
                <p class="m-0 px-2 text-white">/</p>
                <p class="m-0 text-white">Booking History</p>
            </div>
        </div>
        <!-- Page Header Start -->


        <!-- Table of Booked Tickets Start -->
        <div class="container">
            <div class="row form-row">
                <form action="#" method="post">
                    <h2 class="pt-2 pb-1">Tickets Booked Till Now</h2>
                    
                    <div class="row divisionborder">
                        <%
                            ticketdb db = new ticketdb();
                            Connection c = db.getConnection();
                            
                            PreparedStatement ps = c.prepareStatement("select distinct mdate from ticketbooking");
                            ResultSet rs = ps.executeQuery();
                            
                            while(rs.next()) {
                        %>
                        
                        <div class="col-md-4 divisionborder">
                             <h5><%=rs.getString("mdate")%></h5>
                                <%
                                    int totaltickets = 0;
                                    int totalamt = 0;
                                    String tickets = "";
                                    String amount = "";
                                    int cnt = 0;
                                    PreparedStatement ps1 = c.prepareStatement("select * from ticketbooking where mdate = '" + rs.getString("mdate") + "'");
                                    ResultSet rs1 = ps1.executeQuery();
                                    while (rs1.next()) {
                                        cnt++;
                                        totaltickets = totaltickets + Integer.parseInt(rs1.getString("bookticket"));
                                        totalamt = totalamt + Integer.parseInt(rs1.getString("price"));
                                        if (cnt == 0) {
                                            tickets = rs1.getString("bookticket");
                                            amount = rs1.getString("price");
                                        } else {
                                            tickets = tickets + "+" + rs1.getString("bookticket");
                                            amount = amount + "+" + rs1.getString("price");
                                        }
                                    }
                                %>
                                <div class="col-md-12" style="padding-left: 0%;">
                                    <p style="text-align: left;"><b>Total Tickets: </b><%=tickets%></p>
                                    <p style="text-align: left;"><b>Ticket Amount: </b><%=amount%></p>
                                    <p style="text-align: left;"><b>Total Amount:</b><%=totalamt%></p>
                                </div>
                        </div>
                            <%
                                }
                            %>
                        </div>
                </form>
            </div>
        </div>                
        
        <!-- Table of Booked Tickets End -->
        

    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-white mt-5 pt-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <a href="UserHome.jsp" class="navbar-brand">
                    <h1 class="m-0 mt-n2 text-white display-4"><span class="text-primary">S</span>it<span class="text-primary">C</span>om</h1>
                </a>
                <p class="specialp">The one-stop destination for all your travel needs </p>
                <div class="d-flex justify-content-start mt-4">
                    <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px;" href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="font-weight-bold text-primary mb-4">Quick Links</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white mb-2" href="UserHome.jsp"><i class="fa fa-angle-right text-primary mr-2"></i>Home</a>
                    <a class="text-white mb-2" href="userabout.html"><i class="fa fa-angle-right text-primary mr-2"></i>About Us</a>
                    <a class="text-white mb-2" href="userticket.jsp"><i class="fa fa-angle-right text-primary mr-2"></i>Book Tickets</a>
                </div>
            </div>

            <div class="col-md-6 mb-5">
                <h5 class="font-weight-bold text-primary mb-4">Get In Touch</h5>
                <p class="specialp">We live, breathe, and eat traveling. So you may find us here... all the time!</p>
                <p class="specialp"><i class="fa fa-map-marker-alt text-primary mr-2"></i>Metagalli, Mysore, Karnataka</p>
                <p class="specialp"><i class="fa fa-phone-alt text-primary mr-2"></i>+91 7204430985</p>
                <p class="specialp"><i class="fa fa-envelope text-primary mr-2"></i>isandeshbanakar@gmail.com</p>
            </div>
        </div>
    </div>
    <div class="container-fluid py-4 px-sm-3 px-md-5">
        <p class="m-0 text-center">
            &copy; <a class="font-weight-semi-bold" href="UserHome.jsp">SitCom Travel Planner</a>. All Rights Reserved. Designed by
            <a class="font-weight-semi-bold" href="https://htmlcodex.com" target="_blank">Sandesh Banakar</a>
        </p>
    </div>
    <!-- Footer End -->



    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
    <script>
            $(function () {
                GetAllDocuments();
                alert("");
            });

            function GetAllDocuments() {
                $.ajax({
                    url: "../viewUserTable",
                    type: 'POST',
                    dataType: 'json',
                    data: {},
                    success: function (data) {
                        console.log(data);
                        var concat = "";
                        var cnt = 0;
                        $.each(data, function (id, obj) {
                            cnt++;
                            concat += "<tr><td>" + cnt + "</td>\n\
                                           <td><a href=\"editdocument.jsp?did=" + obj.did + "\" class=\"btn btn-success\"><i class=\"fa fa-edit\"></i></button></td>\n\
                                           <td><button type=\"button\" onclick =\"Deletedocuments('" + obj.did + "')\" class=\"btn btn-danger\"><i class=\"fa fa-trash-o\"></i></button></td>\n\
                                           <td>" + obj.name + "</td>\n\
                                           <td>" + obj.email + "</td>\n\
                                           <td>" + obj.date + "</td>\n\
                                           <td>" + obj.message + "</td>\n\
                                           <td>" + obj.number + "</td>\n\
                                           <td>" + obj.ppassword + "</td>\n\
                                           </tr>";
                        });
                        $("#document tbody").empty();
                        $("#document tbody").append(concat);

                    }

                });
            }
        </script>
    </body>
</html>