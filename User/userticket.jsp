
<%@page import="btDB.ticketdb"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
    ticketdb db = new ticketdb();
    Connection c = db.getConnection();
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Ticket Booking</title>
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
                        <a href="userticket.jsp" class="nav-item nav-link active">Ticket Booking</a>
                        <a href="viewBookingHistory.jsp" class="nav-item nav-link">Booking History</a>

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
            <h1 class="display-4 text-white mb-3 mt-0 mt-lg-5">User Profile</h1>
            <div class="d-inline-flex text-white">
                <p class="m-0"><a class="text-white" href="UserHome.jsp">User</a></p>
                <p class="m-0 px-2 text-white">/</p>
                <p class="m-0 text-white">Ticket Booking</p>
            </div>
        </div>
        <!-- Page Header End -->

        <!-- Ticket Booking Section Start -->

        <div class="col-lg-8">
            <div class="appoinment-wrap mt-5 mt-lg-0 pl-lg-5">
                <h2 class="mb-2 title-color">Tickets</h2>

                <form  class="appoinment-form" method="post" action="../viewbooking">
                    <div class="row">


                        <div class="col-lg-8">
                            <div class="form-group">

                                Booking Date: <input type="date" name="date" id="date" class="form-control" 
                                                     placeholder="" onchange="getTicket(this.value)" >

                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="form-group">

                                <p class="text-center"><b>Ticket Price: <span id="tamt"></span></b></p>
                                <p class="text-center"><b>Available Ticket : <span id="tavl"></span></b></p>

                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="form-group">
                                Required Ticket:<input name="ticket" id="ticket" type="number" class="form-control" 
                                                       onkeyup="Calculate(this.value)" placeholder="Required Tickets">
                                
                                <input type="hidden" name="alticket" id="alticket">
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="form-group">
                                Total Amount:<input name="price" readonly="" id="price" type="number" class="form-control" 
                                                    placeholder="Price per ticket">
                            </div>
                        </div>


                        <div class="col-lg-8">

                            <input class="btn btn-primary font-weight-semi-bold px-4" name="submit" type="submit" value="Submit"></input>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    
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
                                    $(document).ready(function () {
                                        const d = new Date();
                                        var month = '' + (d.getMonth() + 1),
                                                day = '' + d.getDate(),
                                                year = d.getFullYear();

                                        if (month.length < 2)
                                            month = '0' + month;
                                        if (day.length < 2)
                                            day = '0' + day;

                                        $("#date").val([year, month, day].join('-'));
                                        getTicket([year, month, day].join('-'));
                                    })
                                    var available = "";
                                    var mainprice = "";
                                    function getTicket(date)
                                    {
                                        $.ajax({
                                            url: "../getticket",
                                            type: 'POST',
                                            dataType: 'json',
                                            data: {date: date},
                                            success: function (data) {
                                                available = data[0].available;
                                                mainprice = data[0].price;
                                                document.getElementById("tamt").innerHTML = data[0].price;
                                                document.getElementById("tavl").innerHTML = data[0].available;
                                                $("#alticket").val(data[0].available);
                                            }
                                        });
                                    }
                                   
                                    function Calculate(val){
                                        if(parseInt(val) > parseInt(available)){
                                            alert("The required number of tickets are not be available! Please Select max "+available+" ticktes");
                                            $("#ticket").val("");
                                        }else{
                                           $("#price").val(parseInt(val)* parseInt(mainprice));
                                        }
                                    }
        </script>


    </body>
</html>