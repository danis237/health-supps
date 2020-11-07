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
   <?php include("header.php") ?>

  <div id="content">
    <div  class="container">
		<div class='section'></div><!-- For SEARCHED PRODUCTS-->
		<div class='old'></div>
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
  include("includes/footer-guest.php");
?>
       <!--Footer end-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="javascript/custom.js"></script>
</body>
</html>
