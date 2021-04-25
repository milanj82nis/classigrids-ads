<?php 
require_once 'include/FlashMessages.php';


class Ad extends DbConnect {


private function checkIsAdsFormEmpty($title , $price , $price_type_id , $currency_id , $payment_id , $images  , $description , $condition_id , $sub_category_id , $amount , $sending_id  ){


if(!empty($title) && !empty($price) && !empty($price_type_id) && !empty($currency_id) && !empty($payment_id) && !empty($images) && !empty($description) && !empty($condition_id) && !empty($sub_category_id) && !empty($amount) &&  !empty($sending_id)  ){

	return true;
} else {
return false;
}

}// checkIsAdsFormEmpty


public function postAnAd($title , $price , $price_type_id , $currency_id , $payment_id , $images , 
$youtube_link , $description , $condition_id , $sub_category_id , $amount , $sending_id , $free_delivery ){


if( $this -> checkIsAdsFormEmpty($title , $price , $price_type_id , $currency_id , $payment_id , $images  , $description , $condition_id , $sub_category_id , $amount , $sending_id )){




$files = [];

foreach($images['name'] as $i => $name ){

$name = $images['name'][$i];
$size = $images['size'][$i];
$type = $images['type'][$i];
$tmp = $images['tmp_name'][$i];

$explode = explode( '.',$name);

$ext = end($explode);

$updatdName = $explode[0] . time() .'.'. $ext;

$path = 'uploads/';
$path = $path . basename($updatdName);


if(empty($images['tmp_name'][$i])){

$errors[]= 'Please at least one image to upload.';
} else {

$allowed = array( 'jpg' , 'jpeg' , 'gif' , 'bmp' , 'png');
$max_size = 2000000;

if( in_array($ext , $allowed) === false ){

$errors[] = 'File extension is not allowed.';
}

if( $size > $max_size ){

	$errors[] = 'File size is too high';
}



}// if(empty)


if( empty($errors)){

$files['file_name'][] = $updatdName;
$files['size'][] = $size;
$files['type'][]= $type;
$errors = array();

if( !file_exists('uploads')){
mkdir('uploads' , true);
}

if( move_uploaded_file($tmp , $path )){

	echo '<p>Images are uploaded.</p>';
} else {
	echo 'Somethind went wrong while uploading images';
}

} else {

	foreach($errors as $error ){
		echo $error;
	}
}

}// foreach

if(!empty($files)){

$files['file_name'][] = $updatdName;
$images = implode( '|' , $files['file_name']);
$created_at = date('Y-m-d H:i:s');
$updated_at = date('Y-m-d H:i:s');
$expires_at = date('Y-m-d H:i:s' , strtotime($created_at . ' + 30 days'));
$user_id = (int)$_SESSION['user_id'];
$sql = ' insert into  ads ( title , price , currency_id , price_type_id , payment_id , images , youtube_link , description , condition_id , sending_id , sub_category_id , amount , free_delivery , created_at , updated_at , expires_at , user_id  ) 
values ( ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? )';


$query = $this -> connect() -> prepare($sql);
$query -> execute([ $title , $price , $currency_id , $price_type_id , $payment_id , $images , $youtube_link , $description , $condition_id , $sending_id , $sub_category_id , $amount , $free_delivery , $created_at , $updated_at , $expires_at , $user_id ]);



}






} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , fill all fields in form.');
}



}// postAnAd


public function getAllCategories(){	
	$sql = 'select * from categories order by title asc';
	$query = $this -> connect() -> query ($sql);
	$categories = $query -> fetchAll();
	return $categories;

}// getAllCategories


public function getAllSubCategories(){	
	$sql = 'select * from subcategories order by title asc';
	$query = $this -> connect() -> query ($sql);
	$subcategories = $query -> fetchAll();
	return $subcategories;

}// getAllSubCategories


public function getAllConditions(){	
	$sql = 'select * from conditions order by title asc';
	$query = $this -> connect() -> query ($sql);
	$conditions = $query -> fetchAll();
	return $conditions;

}// getAllConditions


public function getAllCurrencies(){	
	$sql = 'select * from currencies order by title asc';
	$query = $this -> connect() -> query ($sql);
	$currencies = $query -> fetchAll();
	return $currencies;

}// getAllCurrencies


public function getAllPaymentMethods(){	
	$sql = 'select * from payment_methods order by title asc';
	$query = $this -> connect() -> query ($sql);
	$payment_methods = $query -> fetchAll();
	return $payment_methods;

}// getAllPaymentMethods


public function getAllPriceTypes(){	
	$sql = 'select * from price_types order by title asc';
	$query = $this -> connect() -> query ($sql);
	$price_types = $query -> fetchAll();
	return $price_types;

}// getAllPriceTypes

public function getAllSendingMethods(){	
	$sql = 'select * from sending_methods order by title asc';
	$query = $this -> connect() -> query ($sql);
	$sending_methods = $query -> fetchAll();
	return $sending_methods;

}// getAllSendingMethods


public function getAllAds(){	
	$sql = 'select * from ads order by title asc';
	$query = $this -> connect() -> query ($sql);
	$ads = $query -> fetchAll();
	return $ads;

}// getAllSendingMethods

}//Ad
