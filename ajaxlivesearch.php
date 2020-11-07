<?php
include("includes/db.php"); //including the database file
// Search result
$type = $_POST['type'];
if($type == 1){
    $searchText = $_POST['search'];

    $sql = "SELECT product_id,product_title FROM products where product_title like '%".$searchText."%' order by product_title asc limit 5";

    $result = mysqli_query($con,$sql);

    $search_arr = array();

    while($fetch = mysqli_fetch_assoc($result)){
        $id = $fetch['product_id'];
        $name = $fetch['product_title'];
        $search_arr[] = array("product_id" => $id, "product_title" => $name);
    }

    echo json_encode($search_arr);
}

// get User data
if($type == 2){
    $proid = $_POST['product_id'];

    $sql = "SELECT * FROM products where product_id=".$proid;

    $result = mysqli_query($con,$sql);
?>
<div class='row'>
	<div class='col-sm-12'><h1> Search Result </h1></div>
<?php

    while($d = mysqli_fetch_assoc($result)){
?>
	<div class="col-md-4 col-sm-6 center-responsive">
                  <div class="product">
                  <a href="details-guest.php?pro_id=<?php echo $d['product_id'];?>">
                    <img src="Jastej_Admin/product_images/<?php echo $d['product_img1'];?>" class="img-responsive">
                  </a>
                  <div class="text">
                    <h3><a href="details-guest.php?pro_id=<?php echo $d['product_id'];?>"><?php echo $d['product_title'];?></a></h3>
                    <p class="price"><?php echo $d['product_price'];?> </p>
                    <p class="buttons">
                      <a href="details-guest.php?pro_id=<?php echo $d['product_id'];?>" class="btn btn-default">View Details</a>
                      <a href="details-guest.php?pro_id=<?php echo $d['product_id'];?>" class="btn btn-primary">
                        <i class="fa fa-shopping-cart"> </i>Add To Cart
                      </a>
                    </p>
                  </div>
                  </div>
                </div>

<?php }
echo '</div>';
die;
}

 ?>
