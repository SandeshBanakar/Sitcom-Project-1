<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Tickets</title>
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
                <a href="index.html" class="navbar-brand">
                    <h1 class="m-0 text-white display-4"><span class="text-primary">S</span>it<span class="text-primary">C</span>om</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="AdminHome.jsp" class="nav-item nav-link">Home</a>
                        <a href="viewUser.jsp" class="nav-item nav-link">User</a>
                        <a href="ticket.jsp" class="nav-item nav-link active">Tickets</a>
                        <a href="booking.jsp" class="nav-item nav-link">Booking</a>

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
        <h1 class="display-4 text-white mb-3 mt-0 mt-lg-5">Ticket Update</h1>
        <div class="d-inline-flex text-white">
            <p class="m-0"><a class="text-white" href="AdminHome.jsp">Home</a></p>
            <p class="m-0 px-2 text-white">/</p>
            <p class="m-0 text-white">Tickets</p>
        </div>
    </div>
    <!-- Page Header Start -->
    <!-- Contact Start -->
    <div class="container-fluid py-4">
        <div class="container">
            <div class="text-center">
                <small class="bg-primary text-white text-uppercase font-weight-bold">Ticket update</small>
                <h3 class="mt-2 mb-5">Please update ticket details for the day</h3>
            </div>
            <div class="row ticketborder">
                <div class="col-md-12">
                    <div class="contact-form">
                        <div id="success"></div>
                        <form method="post" action="../ticket">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="control-group">
                                        <input type="date" class="form-control p-4" id="date" name="date" placeholder="date"/>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="control-group">
                                        <input type="number" class="form-control p-4" id="ticket" name="ticket" placeholder="Total Tickets"/>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="control-group">
                                        <input type="number" class="form-control p-4" id="price" name="price" placeholder="Price per Ticket"/>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>

                                <div class="control-group col-md-6">
                                    <input type="number" class="form-control p-4" id="Available" name="Available" placeholder="Available Tickets" />
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>

                            <div>
                                <button class="btn btn-primary font-weight-semi-bold px-4" style="height: 50px;" type="submit" id="submit" name="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-white mt-5 pt-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <a href="AdminHome.jsp" class="navbar-brand">
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
            &copy; <a class="font-weight-semi-bold" href="AdminHome.jsp">SitCom Travel Planner</a>. All Rights Reserved. Designed by
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
    
    <!-- JSON and JAVA Script for Ticket Binding -->
    
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

                                    function getTicket(date)
                                    {
                                        $.ajax({
                                            url: "../getTicket",
                                            type: 'POST',
                                            dataType: 'json',
                                            data: {date: date},
                                            success: function (data) {
                                                if (data.length == 0) {
                                                    $("#ticket").val("");
                                                    $("#price").val("");
                                                    $("#Available").val("");
                                                } else {
                                                    $("#ticket").val(data[0].totaltickets);
                                                    $("#price").val(data[0].price);
                                                    $("#Available").val(data[0].available);
                                                }
                                            }
                                        });
                                    }
</script>

</body>

</html>
    