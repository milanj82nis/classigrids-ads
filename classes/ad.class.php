<?php 
require_once 'include/FlashMessages.php';


class Ad extends DbConnect {


public function checkIsAdInWishlist($ad_id){

$sql = 'select * from wishlist where ad_id = ? and user_id = ? ';
$query = $this -> connect() -> prepare($sql);
$query -> execute( [ $ad_id , $_SESSION['user_id']]);
$ads = $query -> fetchAll();
if( count($ads ) > 0 ){
	return true;
} else {
	return false;
}


}// checkIsAdInWishlist


public function addToWishlist($ad_id){

$sql = 'insert into wishlist ( ad_id , user_id ) values ( ? , ? )';
$query = $this -> connect() -> prepare($sql);
$query -> execute([ $ad_id , $_SESSION['user_id']]);

}// addToWishlist


public function removeFromWishlist($ad_id){

$sql = 'delete from wishlist where ad_id = ? and user_id = ? ';
$query = $this -> connect() -> prepare($sql);
$query -> execute([ $ad_id , $_SESSION['user_id']]);


}// removeFromWishlist





public function getSubCategoryDetails($id){

$sql = 'select * from subcategories where id = ? ';

$query = $this -> connect()-> prepare($sql);

$query -> execute([$id]);
$subCategory = $query -> fetch();
return $subCategory;

}// getSubCategoryDetails

public function getUserDetails($id){

$sql = 'select * from users where id = ? ';

$query = $this -> connect()-> prepare($sql);

$query -> execute([$id]);
$user = $query -> fetch();
return $user;

}// getUserDetails



public function getAllAdsInFrontPage(){



$page = isset($_GET['page']) ? (int)$_GET['page'] : 1 ; 
$perPage = isset($_GET['per-page'])&& $_GET['per-page'] <= 12 ? (int)$_GET['per-page'] : 12 ;

$start = ( $page > 1 ) ? ($page * $perPage ) - $perPage : 0 ;

$sql = 'select * from ads order by title desc LIMIT :start , :perPage';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':start' , $start , PDO::PARAM_INT);
$query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
$query -> execute();
$ads = $query -> fetchAll(); 

$sql = 'select * from ads ';
$query = $this -> connect() -> query($sql);
$ads_count = $query ->  fetchAll();
$allAds = count($ads_count);
$pages = ceil( $allAds / $perPage);

return array('pages' => $pages , 'ads' => $ads , 'per-page' => $perPage );


}// getAllAdsInFrontPage




public function getAdsCountBySubCategory($sub_category_id){

	$sql = 'select * from ads where sub_category_id = ? ';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([ $sub_category_id ]);
	$ads = count($query -> fetchAll());
	return $ads;

}// getAdsCountBySubCategory

public function getAdsCountByCondition($condition_id){

	$sql = 'select * from ads where condition_id = ? ';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([ $condition_id ]);
	$ads = count($query -> fetchAll());
	return $ads;

}// getAdsCountBySubCategory
public function getAdsByPaymentMethod($payment_id){

	$sql = 'select * from ads where payment_id = ? ';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([ $payment_id ]);
	$ads = count($query -> fetchAll());
	return $ads;

}// getAdsCountBySubCategory
public function getAdsBySendingMethod($sending_id){

	$sql = 'select * from ads where sending_id = ? ';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([ $sending_id ]);
	$ads = count($query -> fetchAll());
	return $ads;

}// getAdsCountBySubCategory


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


$page = isset($_GET['page']) ? (int)$_GET['page'] : 1 ; 
$perPage = isset($_GET['per-page'])&& $_GET['per-page'] <= 6 ? (int)$_GET['per-page'] : 6 ;

$start = ( $page > 1 ) ? ($page * $perPage ) - $perPage : 0 ;

$sql = 'select * from ads order by title desc LIMIT :start , :perPage';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':start' , $start , PDO::PARAM_INT);
$query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
$query -> execute();
$ads = $query -> fetchAll(); 

$sql = 'select * from ads ';
$query = $this -> connect() -> query($sql);
$ads_count = $query ->  fetchAll();
$allAds = count($ads_count);
$pages = ceil( $allAds / $perPage);

return array('pages' => $pages , 'ads' => $ads , 'per-page' => $perPage );


}// getAllSendingMethods


public function filterAdsBySendingMethod($sending_id){




$page = isset($_GET['page']) ? (int)$_GET['page'] : 1 ; 
$perPage = isset($_GET['per-page'])&& $_GET['per-page'] <= 6 ? (int)$_GET['per-page'] : 6 ;

$start = ( $page > 1 ) ? ($page * $perPage ) - $perPage : 0 ;

$sql = 'select * from ads  where  sending_id = :sending_id order by title desc LIMIT :start , :perPage';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':sending_id' , $sending_id , PDO::PARAM_INT);
$query -> bindParam( ':start' , $start , PDO::PARAM_INT);
$query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
$query -> execute();
$ads = $query -> fetchAll(); 

$sql = 'select * from ads where  sending_id = ?  ';
$query = $this -> connect() -> prepare($sql);
$query -> execute([$sending_id]);

$ads_count = $query ->  fetchAll();
$allAds = count($ads_count);
$pages = ceil( $allAds / $perPage);

return array('pages' => $pages , 'ads' => $ads , 'per-page' => $perPage );



}// filterAdsBySendingMethod

public function filterAdsBySubCategory($sub_category_id){
	

	$page = isset($_GET['page']) ? (int)$_GET['page'] : 1 ; 
$perPage = isset($_GET['per-page'])&& $_GET['per-page'] <= 6 ? (int)$_GET['per-page'] : 6 ;

$start = ( $page > 1 ) ? ($page * $perPage ) - $perPage : 0 ;

$sql = 'select * from ads  where  sub_category_id = :sub_category_id order by title desc LIMIT :start , :perPage';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':sub_category_id' , $sub_category_id , PDO::PARAM_INT);
$query -> bindParam( ':start' , $start , PDO::PARAM_INT);
$query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
$query -> execute();
$ads = $query -> fetchAll(); 

$sql = 'select * from ads where  sub_category_id = ?  ';
$query = $this -> connect() -> prepare($sql);
$query -> execute([$sub_category_id]);

$ads_count = $query ->  fetchAll();
$allAds = count($ads_count);
$pages = ceil( $allAds / $perPage);

return array('pages' => $pages , 'ads' => $ads , 'per-page' => $perPage );





}// filterAdsBySendingMethod

public function filterAdsByPaymentMethod($payment_id){
		

	$page = isset($_GET['page']) ? (int)$_GET['page'] : 1 ; 
$perPage = isset($_GET['per-page'])&& $_GET['per-page'] <= 6 ? (int)$_GET['per-page'] : 6 ;

$start = ( $page > 1 ) ? ($page * $perPage ) - $perPage : 0 ;

$sql = 'select * from ads  where  payment_id = :payment_id order by title desc LIMIT :start , :perPage';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':payment_id' , $payment_id , PDO::PARAM_INT);
$query -> bindParam( ':start' , $start , PDO::PARAM_INT);
$query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
$query -> execute();
$ads = $query -> fetchAll(); 

$sql = 'select * from ads where  payment_id = ?  ';
$query = $this -> connect() -> prepare($sql);
$query -> execute([$payment_id]);

$ads_count = $query ->  fetchAll();
$allAds = count($ads_count);
$pages = ceil( $allAds / $perPage);

return array('pages' => $pages , 'ads' => $ads , 'per-page' => $perPage );






}// filterAdsBySendingMethod

public function filterAdsByCondition($condition_id){
	
		$page = isset($_GET['page']) ? (int)$_GET['page'] : 1 ; 
$perPage = isset($_GET['per-page'])&& $_GET['per-page'] <= 6 ? (int)$_GET['per-page'] : 6 ;

$start = ( $page > 1 ) ? ($page * $perPage ) - $perPage : 0 ;

$sql = 'select * from ads  where  condition_id = :condition_id order by title desc LIMIT :start , :perPage';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':condition_id' , $condition_id , PDO::PARAM_INT);
$query -> bindParam( ':start' , $start , PDO::PARAM_INT);
$query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
$query -> execute();
$ads = $query -> fetchAll(); 

$sql = 'select * from ads where  condition_id = ?  ';
$query = $this -> connect() -> prepare($sql);
$query -> execute([$condition_id]);

$ads_count = $query ->  fetchAll();
$allAds = count($ads_count);
$pages = ceil( $allAds / $perPage);

return array('pages' => $pages , 'ads' => $ads , 'per-page' => $perPage );

}// filterAdsBySendingMethod

public function getCurrencyDetails($currency_id){

	$sql = 'select * from currencies where  id = ? order by title asc';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([$currency_id]);
	$currency = $query -> fetch();
	return $currency;
}//getCurrencyDetails


public function viewAd($id){

	$sql = 'select * from ads where id = ? limit 1 ';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([$id]);
	$ad = $query -> fetch();
	if( !$ad ){
		header('Location:index.php');
		die();
	}
	return $ad;
}// viewAD

public function getPaymentDetails($payment_id){

	$sql = 'select * from payment_methods where  id = ? order by title asc';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([$payment_id]);
	$payment = $query -> fetch();
	return $payment;
}//getPaymentDetails


public function getSendingDetails($sending_id){

	$sql = 'select * from sending_methods where  id = ? order by title asc';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([$sending_id]);
	$sending = $query -> fetch();
	return $sending;
}//getSendingDetails


public function getConditionDetails($condition_id){

	$sql = 'select * from conditions where  id = ? order by title asc';
	$query = $this -> connect() -> prepare($sql);
	$query -> execute([$condition_id]);
	$conition = $query -> fetch();
	return $conition;
}//getConditionDetails



}//Ad
