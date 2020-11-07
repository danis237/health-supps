<?php
  include("includes/db.php"); //including the database file
  include("functions/functions.php");//including function file with all functions used
 ?>

<!DOCTYPE html>
<html> <!--starting html -->
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

          <li>
            <a href="cart.php">Go to Cart</a>
          <li>
            <a href="index.php">Logout</a>
      </div>

    </div><!--Container End-->
  </div><!--Top Bar End-->

<!--Carousel slider start------------------------------------------------>
<div  id="slider"> <!--for the slider after nav--> <!--container start-->
  <div  id="colmd12NoPadding"><!--full width screen--> <!--col md 12 start-->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>

      </ol>

      <div  class="carousel-inner" > <!--inside of the slider for images--> <!--carouser iner start-->
        <!--<div class="item active">
          <img src="slider-images/1.jpg" alt="Product-1" style="width:100%;">
          <div class="carousel-caption">
            <h2>TRANSFORM YOURSELF</h2>
            <p>See the change in you.</p>
          </div>
        </div>
        <div class="item">
          <img src="slider-images/2.jpg" alt="Product-2" style="width:100%;">
          <div class="carousel-caption">
            <h2>TRANSFORM YOURSELF</h2>
            <p>See the change in you.</p>
          </div>
        </div>
        <div class="item">
          <img src="slider-images/3.jpg" alt="Product-3" style="width:100%;">
          <div class="carousel-caption">
            <h2>TRANSFORM YOURSELF</h2>
            <p>See the change in you.</p>
          </div>
        </div>
      </div>
    --><!--this is the static version I had before implementing php code to make the slider dynamic-->
      <!--carousel inner end-->

      <?php
        $get_slider="select * from slider LIMIT 0,1";
        $run_slider=mysqli_query($con,$get_slider);
        while ($row=mysqli_fetch_array($run_slider)){
          $slider_name=$row['slider_name'];
          $slider_image=$row['slider_image'];
          echo "<div class='item active'>
          <img src='slider-images/$slider_image'>
          </div>
          ";
        }
       ?>

       <?php
         $get_slider="select * from slider LIMIT 1,2";
         $run_slider=mysqli_query($con,$get_slider);
         while ($row=mysqli_fetch_array($run_slider)){
           $slider_name=$row['slider_name'];
           $slider_image=$row['slider_image'];
           echo "<div class='item'>
           <img src='slider-images/$slider_image'>
           </div>
           ";
         }
        ?>


      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><!--for turning slider left and right-->
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div> <!--carousel slide end-->
  </div><!--col md 12 end-->
</div><!--container end-->

  <div id="advantage"><!--advantage start-->
    <div class="container"><!--container start-->
      <div class="same-height-row"><!--same height row start-->
        <div class="col-sm-4"><!--col-sm-4start-->
          <div class="box same-height"><!--box same height row-->
            <div class="icon">
              <i class="fa fa-heart"></i>
            </div>
            <h3><a href="#">Best Prices</h3>
              <p>Check all sides- No comparison with us.</p>
            </div><!--same height end-->
          </div><!--col-sm-4 end-->

          <div class="col-sm-4"><!--col-sm-4start-->
            <div class="box same-height"><!--box same height row-->
              <div class="icon">
                <i class="fa fa-heart"></i>
              </div>
              <h3><a href="#">Original</h3>
                <p>Check all sides- No comparison with us.</p>
              </div><!--same height end-->
            </div><!--col-sm-4 end-->

            <div class="col-sm-4"><!--col-sm-4start-->
              <div class="box same-height"><!--box same height row-->
                <div class="icon">
                  <i class="fa fa-heart"></i>
                </div>
                <h3><a href="#">Satisfaction</h3>
                  <p>Free returns for everything.</p>
                </div><!--same height end-->
              </div><!--col-sm-4 end-->

        </div><!--same height row end-->
      </div><!--container end-->
    </div><!--advantage end-->

    <div class="hot">
      <div class="box">
        <div class="container">
          <div class="col-md-12">
            <h2>Latest This week</h2>
          </div>
        </div>
      </div>
    </div>

    <div id="content" class="container"> <!--content container start-->
      <div class="row"><!--row start-->
	  <div class='section'></div>
		<div class='old'>
        <?php
        getPro();
         ?>
        <!--deleting/commenting out this part to make site dynamic from static
        <div class="col-sm-4 col-sm-6 single">
          <div class="product">
            <a href="detailes.php">
              <img src="Jastej_Admin/product_images/ONWhey2.2.jpg" class="img-responsive">
            </a>
            <div class="text">
              <h3><a href="details.php">Optimum Nutrition Whey Protein</a></h3>
              <p class="price">CAD 89.00</p>
              <p class="buttons">
                 <a href="cart.php" class="btn btn-custom-cart">
                   <i class="fa fa-shopping-cart"></i> Add to Cart
                 </a>
               </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-sm-6 single">
          <div class="product">
            <a href="details.php">
              <img src="Jastej_Admin/product_images/ONWhey2.2.jpg" class="img-responsive">
            </a>
            <div class="text">
              <h3><a href="details.php">Optimum Nutrition Whey Protein</a></h3>
              <p class="price">CAD 89.00</p>
              <p class="buttons">
                 <a href="cart.php" class="btn btn-custom-cart">
                   <i class="fa fa-shopping-cart"></i> Add to Cart
                 </a>
               </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-sm-6 single">
          <div class="product">
            <a href="detailes.php">
              <img src="Jastej_Admin/product_images/ONWhey2.2.jpg" class="img-responsive">
            </a>
            <div class="text">
              <h3><a href="details.php">Optimum Nutrition Whey Protein</a></h3>
              <p class="price">CAD 89.00</p>
              <p class="buttons">
                 <a href="cart.php" class="btn btn-custom-cart">
                   <i class="fa fa-shopping-cart"></i> Add to Cart
                 </a>
               </p>
            </div>
          </div>
        </div>

        <div class="col-sm-4 col-sm-6 single">
          <div class="product">
            <a href="detailes.php">
              <img src="Jastej_Admin/product_images/ONWhey2.2.jpg" class="img-responsive">
            </a>
            <div class="text">
              <h3><a href="details.php">Optimum Nutrition Whey Protein</a></h3>
              <p class="price">CAD 89.00</p>
              <p class="buttons">
                 <a href="cart.php" class="btn btn-custom-cart">
                   <i class="fa fa-shopping-cart"></i> Add to Cart
                 </a>
               </p>
            </div>
          </div>
        </div>
      -->
	</div>
      </div><!--row end-->

      <div class="shop-more"> <!--shopbutton at end of page-->
        <center>
        <a href="shop.php" class="btn btn-custom-cart">Shop More </a>
        <br>
      </center>
      </div>
    </div> <!--content container end-->

  <!--Footer start-->
<?php
  include("includes/footer.php");
 ?>

  <!--Footer start-->



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="javascript/custom.js"></script>
</body>
</html>
