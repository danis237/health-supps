<?php
  include("includes/db.php");
  include("functions/functions.php");
 ?>

 <!DOCTYPE html>
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

<!--bodystart-------------------------------------------------------------------------------------------------------------------------------------------->
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

            <li>
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


<!--content start------------------------------------------------------------------------------------------------------------------------------------------------->
  <div id="content">
    <div  class="container">
       <div class="col-md-9" id="cart">   <!--tricks for cart in bootstrap learnt from https://www.practicalecommerce.com/Build-a-Responsive-Mobile-first-Cart-Page-with-Bootstrap-->
         <div class="box">
           <form action="cart.php" method="post" enctype="multipart-form-data">
             <h1>Shopping Cart</h1>
             <?php
             $ip_add=getUserIP();
             $select_cart="select * from cart where ip_add='$ip_add'";
             $run_cart=mysqli_query($con,$select_cart);
             $count=mysqli_num_rows($run_cart);
              ?>

             <p id="cartTextMuted" > Currently you have <?php echo $count ?> item(s) in your cart</p>
             <div class="table-responsive">
               <!--more tips from  https://stackoverflow.com/questions/21952527/bootstrap-table-table-condensed-table-hover-top-border-not-showing
               and also IMPORTANT LINK used https://www.tutorialrepublic.com/twitter-bootstrap-tutorial/bootstrap-tables.php-->
               <table class="table">
                 <thread>
                   <tr>
                     <th colspan="2">Product</th>
                     <th >Quantity</th>
                     <th>Unit Price</th>
                     <th>Size</th>
                     <th colspan="1">Delete</th>
                     <th colspan="1">Sub Total</th>
                   </tr>
                 </thread>
                 <tbody>
                   <?php
                   $total=0;
                   while($row=mysqli_fetch_array($run_cart)){
                     //taking data from two tables: products table and carts tables
                     $pro_id=$row['p_id'];
                     $pro_size=$row['size'];
                     $pro_qty=$row['qty'];
                     $get_product="select * from products where product_id='$pro_id'";
                     $run_pro=mysqli_query($con,$get_product);
                     while($row=mysqli_fetch_array($run_pro))
                     {
                       $p_title=$row['product_title'];
                       $p_img1=$row['product_img1'];
                       $p_price=$row['product_price'];
                       $sub_total=$row['product_price']*$pro_qty; //as subtotal= price times quantity of product_size
                       $total+=$sub_total; //incrementing the total with subtotal value by adding
                    ?>
                   <tr>
                     <td><img src="Jastej_Admin/product_images/<?php echo $p_img1 ?>" class="img-responsive"></td>
                       <td><?php echo $p_title ?></td>
                       <td><?php echo $pro_qty ?></td>
                       <td>CAD<?php echo $p_price ?></td>
                       <td><?php echo $pro_size ?> Kg</td>
                       <td><input type="checkbox" name="remove[]" value="<?php echo $pro_id ?>"></td>
                       <td>CAD <?php echo $sub_total ?></td>
                   </tr>
                 </tbody>
                 <tfoot>

                 <?php }  } ?>
                 </tfoot>
               </table>
             </div><!--tabele responsive end-->

             <div class="box-footer">
               <div class="pull-left">
                 <h4>Total Price</h4>
               </div><!--pulll left end-->

               <div class="pull-right">
                 <h4>CAD <?php echo $total; ?>.00</h4>

               </div><!--pulll right end-->
             </div><!--boxfooter end-->


             <div class="box-footer">
               <div class="pull-left">
                 <a href="index-member.php" class="btn btn-default">
                   <i class="fa fa-chevron-left"></i>Continue Shopping
                 </a>
               </div><!--pulll left end-->

               <div class="pull-right">
                 <button class="btn btn-default" type="submit" name="update" value="Update Cart">
                   <i class="fa fa-chevron-refresh">Update Cart</i>
                 </button>

                 <a  class="btn btn-primary">
                   Proceed to checkout
                   <script>window.alert("This leads to a paypal page when checkout button is clicked")</script>
                   <i class="fa fa-chevron-right"></i>
                 </a>

               </div><!--pulll right end-->
             </div><!--boxfooter end-->
           </form>
         </div><!--box end-->

         <?php
         function update_cart(){
           global $con;
           if(isset($_POST['update'])){ //update is the name of the button in the form above
             foreach($_POST['remove'] as $remove_id){ //remove_id is the new name we use
               $delete_product="delete from cart where p_id='$remove_id'";
               $run_del=mysqli_query($con,$delete_product);
               if($run_del){ //if run_del works then do this
                 echo "<script>window.open('cart.php','_self')</script>";
               }
             }
           }
         }

         echo @$up_cart=update_cart(); //@ so that if user is on website, there is no error if it doesnt work
          ?>
       </div><!--colmd9- cart end--> <!--colmd9 end-------------------------------------------------------------------->

       <div class="col-md-3">
         <div class="box" id="order-summary">
           <div class="box-header">
             <h3>Order Summary</h3>
           </div><!--box header end-->


            <div class="table-responsive">
              <table class="table">
                <tbody>
                  <tr>
                    <td>Order Subtotal</td>
                    <th>CAD <?php echo $total ?></th>
                  </tr>
                  <tr>
                    <td>Shipping and Handling</td>
                    <td>CAD 0.00</td>
                  </tr>
                  <tr>
                    <td>Taxes</td>
                    <td>CAD 0.00</td>
                  </tr>
                  <tr class="total">
                    <td>Total</td>
                    <th>CAD <?php echo $total ?></th>
                  </tr>
                </tbody>
              </table>
            </div><!--table responsive end-->
         </div>
       </div><!--colmd3 end--------------------------------------------------------------------------------------------->

       </div><!--container end-->
     </div><!--content end-->




<!------------------------------------------------------------------------------------->
<!--Footer start-->
<?php
include("includes/footer.php");
?>

<!--Footer start-->



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     </body>
     </html>
