<?php
 include("includes/db.php");
$chra = $_POST['chra'];
//$searched = $_POST['searched'];
//echo $chra;
$query = "SELECT * from products where chra like '$chra%'";
$data = mysqli_query($con,$query);
?>
<div class='row'>
	<div class='col-sm-12'><h1> Search Result </h1></div>
<?php
while($d = mysqli_fetch_assoc($data)){
?>
<div class="col-md-4 col-sm-6 center-responsive">
                  <div class="product">
                  <a href="details.php?pro_id=<?php echo $d['product_id'];?>">
                    <img src="Jastej_Admin/product_images/<?php echo $d['product_img1'];?>" class="img-responsive">
                  </a>
                  <div class="text">
                    <h3><a href="details.php?pro_id=<?php echo $d['product_id'];?>"><?php echo $d['product_title'];?></a></h3>
                    <p class="price"><?php echo $d['product_price'];?> </p>
                    <p class="buttons">
                      <a href="details.php?pro_id=<?php echo $d['product_id'];?>" class="btn btn-default">View Details</a>
                      <a href="details.php?pro_id=<?php echo $d['product_id'];?>" class="btn btn-primary">
                        <i class="fa fa-shopping-cart"> </i>Add To Cart
                      </a>
                    </p>
                  </div>
                  </div>
                </div>

<?php }
echo '</div>';
die; //to return only one response


 ?>
