<?php
  include("includes/db.php"); //including the database file
  include("functions/functions.php");//including function file with all functions used
 ?>

<!DOCTYPE html><!--html start-->
<html>
<head>
  <title>My Store</title>

        <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <!-- jQuery library -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <!-- Latest compiled JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <!--Font-Awesome CDN-->

      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

      <link rel="stylesheet" type="text/css" href="style/style.css"/>

      <link href="https://fonts.googleapis.com/css?family=Staatliches&display=swap" rel="stylesheet">
</head>
<html>

<body>
  <div id="top" >                                         <!--Top Bar Start-->
    <div class="container">                               <!--Container Start-->
      <div class="col-md-6 offer">                        <!--col-md-6 Start-->
        <a href="shop.php" class="btn btn-success btn-sm" >
          Welcome Member
        </a> <!--using bootstrap's btn and btn-success class and making the button small with btn-sm class-->
        <!--Bootstrap classes- https://www.w3schools.com/bootstrap/bootstrap_ref_all_classes.asp-->

        <a href="#" id="topGuest">Shopping Cart Total Price: CAD <?php totalPrice(); ?>, Total Items <?php item(); ?></a>
      </div><!--col-md-6 End-->

      <div class="col-md-6"><!---->
        <ul class="menu">
          <li>
            <a href="register.php">Register Here</a>
          </li>
          <li>
            <a href="cart.php">Go to Cart</a>
          </li>
          <li>
            <a href="index.php">Logout</a>
          </li>
      </div>

    </div><!--Container End-->
  </div><!--Top Bar End-->


  <div class="navbar navbar-default" id="navbar"> <!--navbar Start-->
    <div class="container"> <!--navbar container start-->
      <div class="navbar-header"> <!--navbar header start-->
        <a class="navbar-brand home" href="index-member.php">
          <img src="images/logo.jpg" alt="logo" class="hidden-xs"> <!--hidden xs hides the logo when screen is extra small-->
          <img src="images/logoShort.jpg" alt="logo" class="visible-xs">
        </a>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
          <span class="sr-only">Toggle Navigation</span>
          <i class="fa fa-align-justify"></i> <!--Icon taken and copy pasted from https://fontawesome.com/icons/align-justify?style=solid-->
        </button>


      </div><!--navbar header end-->

      <div class="navbar-collapse collapse" id="navigation"> <!--navbar collapse start--> <!--bootstrap nav classes= https://getbootstrap.com/docs/4.3/components/navbar/-->
        <div class="padding-nav"> <!--padding nav start-->
          <ul class="nav navbar-nav navbar-left" id="ulnav">
            <li >
              <a href="index-member.php">Home</a>
            </li>

            <li >
              <a href="shop.php">Shop</a>
            </li>

            <li class="active">
              <a href="contactus.php">Contact Us</a>
            </li>

          </ul>
        </div><!--padding nav end-->
        <a href="cart.php" class="btn btn-primary navbar-btn right" id="cartbtn"> <!--bootstrap default button class-->
          <i class="fa fa-shopping-cart"></i>
          <span> <?php item(); ?> items in cart </span>
        </a>

      </div> <!--navbar collapse end-->
    </div> <!--navbar container end-->

  </div><!--navbar default end-->

  <div id="content">
    <div  class="container">


         <div class="col-md-12"><!--colmd9-->
           <div class="box">
             <div class="box-header"><!--box header for heading-->
               <center>
                 <h2>Contact Us<h2>
                   <p class="contactUsP">Please feel free to contact us for any queries. We are here for you.  </p><!--sub heading-->
               </center>
             </div><!--boxheader end-->
             <div class="contactusUl">
               <center>
                  <ul >
                    <li>Company Name: HealthSupps</li>
                    <li>Location: 9987 Vancouver Street, BC</li>
                    <li>Number: 6048709811</li>
                    <li>Email: healthsupps01@gmail.com</li>
                  <ul>
                </center>
            </div>
           </div><!--box end-->
         </div><!--colmd12 end-->
    </div><!--container end-->
  </div><!--content end-->

<!--Footer start-->
<?php
  include("includes/footer.php");
?>
       <!--Footer end-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>
