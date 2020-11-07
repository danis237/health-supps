<?php
include("includes/db.php");
$pro_id =$_POST['pro_id'];
$user_name =$_POST['user'];
$type =$_POST['type'];
$response = array();
$query  = "select * from pro_fav_like where user_name='$user_name' && product_id=$pro_id";// query for checking
	$data = mysqli_query($con,$query);
	$rows=mysqli_num_rows($data);// check number for rows
 //$pro_id.$user_name;
 if($type=='fav'){
	if($rows > 0 ){
		$getData = mysqli_fetch_assoc($data);
		if($getData['favorite']=='yes'){
			$query ="update pro_fav_like set favorite='no' where product_id=$pro_id";
			mysqli_query($con,$query);
			$response['favorite']='no';
		}else{
			$query ="update pro_fav_like set favorite='yes'";
			mysqli_query($con,$query);
			$response['favorite']='yes';
		}
	}else{
		$query1 = "insert into pro_fav_like(product_id,user_name,favorite,like_pro) values($pro_id,'$user_name','yes','')";
		if(mysqli_query($con,$query1)){
			$response['favorite']='yes';
		}else{
			echo mysqli_error($con);
		}
	} 
 }else{
	if($rows > 0 ){
		$getData = mysqli_fetch_assoc($data);
		if($getData['like_pro']=='yes'){
			$query ="update pro_fav_like set like_pro='no' where product_id=$pro_id";
			mysqli_query($con,$query);
			$response['like_pro']='no';
		}else{
			$query ="update pro_fav_like set like_pro='yes' where product_id=$pro_id";
			mysqli_query($con,$query);
			$response['like_pro']='yes';
		}
	}else{
		$query1 = "insert into pro_fav_like(product_id,user_name,favorite,like_pro) values($pro_id,'$user_name','','yes')";
		if(mysqli_query($con,$query1)){
			$response['like_pro']='yes';
		}else{
			echo mysqli_error($con);
		}
	} 
	 
	 
	 
	 
 }
 echo json_encode($response);die;










?>