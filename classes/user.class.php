<?php
require_once 'include/FlashMessages.php';


class User extends DbConnect{


public function userLogout(){

if( isset($_SESSION['logged_in'])){
	session_destroy();
	header('Location:index.php');
	die();
}

}// userLogout



private function checkIsPasswordResetFormEmpty($password , $password_confirmation ){
if(!empty($password ) && !empty($password_confirmation)){
		return true;
}else {
	return false;;
}

}// checkIsPasswordFormEmpty

 public function userPasswordReset($password , $password_confirmation){
	if( $this -> checkIsPasswordResetFormEmpty($password , $password_confirmation)){

if( $this -> checkIsPasswordsSame($password , $password_confirmation)){

$user_id = $_SESSION['user_id'];
$hashed_password = password_hash( $password , PASSWORD_DEFAULT);

$sql = 'update users set password = ? where id = ? limit 1 ';
$query = $this -> connect()-> prepare($sql);
$query -> execute([ $password , $user_id]);

$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->success('Your passwords is updated.');



}else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Your passwords are not same.');
}// checkIsPasswordsSame
}else {
$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , fill all fields in form.');
	}// checkIsPasswordResetFormEmpty

}// userPasswordReset

private function checkIsChangeAccountFormEmpty($first_name , $last_name , $email , $state , $city , $postal_code , $address , $phone_number ){

if( !empty($first_name) &&  !empty($last_name) &&  !empty($email) &&  !empty($state) &&  !empty($city) &&  !empty($postal_code) &&  !empty($address) &&  !empty($phone_number) &&  !empty($first_name) &&   !empty($phone_number) ){
	return true;
} else {
	return false;
}

}// checkIsChangeAccountFormEmpty


public function changeUserAccount($first_name , $last_name , $email , $state , $city , $postal_code , $address , $phone_number ){

if( $this -> checkIsChangeAccountFormEmpty($first_name , $last_name , $email , $state , $city , $postal_code , $address , $phone_number )){
if( $this -> checkIsEmailValid($email)){
if( $this -> checkIsEmailRegistered($email)){


$sql = 'update users set first_name = ? ,last_name = ? ,email = ? ,state = ? ,city = ? ,postal_code = ? ,address = ? , phone_number = ? ';
$query = $this -> connect() -> prepare($sql);
$query -> execute([ $first_name , $last_name , $email , $state , $city , $postal_code , $address , $phone_number]);

$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->success('Your account info is updated.');

} else {

$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Email address you entered is already registered.');

}

} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , enter valid email address.');
}

} else {
$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , fill all fields in form.');
}
}// changeUserAccount

public function getUserDetailsById($id){

	$sql = 'select * from users where id = ? limit 1 ';

	$query = $this -> connect()-> prepare($sql);

	$query -> execute([ $id ]);

	$userInfo = $query -> fetch();

	return $userInfo;

}// getUserDetailsById


public function checkIsUserLoggedIn(){

	if( isset($_SESSION['logged_in'])){
		return true;
	} else {
		return false;
	}

}// checkIsUserLoggedIn


private function checkIsRegosterFormFieldsEmpty($first_name , $last_name , $state , $city , $address , $postal_code , $password , $password_confirmation , $email , $phone_number){


if( !empty($first_name) &&  !empty($last_name) &&  !empty($state) &&  !empty($city) &&  !empty($address) &&  !empty($postal_code) &&  !empty($password) &&  !empty($password_confirmation) &&  !empty($first_name) &&   !empty($phone_number) ){
	return true;
} else {
	return false;
}

}// checkIsRegosterFormFieldsEmpty

private function checkIsPasswordsSame( $password , $password_confirmation ){
if( $password == $password_confirmation ){

	return true;
} else {
	return false;
}

}// checkIsPasswordsSame

private function checkIsEmailValid($email){
if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
    return true;
} else {
	return false;
}

}// email


private function checkIsEmailRegistered($email){

$sql = 'select email from users where email = :email ';
$query =$this -> connect() -> prepare($sql);
$query -> bindParam( ':email' , $email );
$query -> execute();
$results = $query -> fetchAll();
if( count($results ) == 0 ){
	return true;
} else {
	return false;
}


}// checkIsEmailRegistered
public function userRegistration($first_name , $last_name , $state , $city , $address , $postal_code , $password , $password_confirmation , $email , $phone_number ){

if( $this -> checkIsRegosterFormFieldsEmpty($first_name , $last_name , $state , $city , $address , $postal_code , $password , $password_confirmation , $email , $phone_number)){

if( $this -> checkIsPasswordsSame($password , $password_confirmation )){
if( $this -> checkIsEmailValid($email)){
if( $this -> checkIsEmailRegistered($email )){



$sql = 'insert into users ( first_name , last_name , state , city , postal_code , address , email , password , phone_number , created_at ) 

values (:first_name , :last_name , :state , :city , :postal_code , :address , :email , :password , :phone_number , :created_at)';
$hashed_password = password_hash($password, PASSWORD_DEFAULT);
$created_at = date('Y-m-d H:i:s');

$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':first_name' , $first_name );
$query -> bindParam( ':last_name' , $last_name );
$query -> bindParam( ':state' , $state );
$query -> bindParam( ':city' , $city );
$query -> bindParam( ':postal_code' , $postal_code );
$query -> bindParam( ':address' , $address );
$query -> bindParam( ':email' , $email );
$query -> bindParam( ':password' , $hashed_password );
$query -> bindParam( ':phone_number' , $phone_number );
$query -> bindParam( ':created_at' , $created_at );

$query -> execute();
			$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->success('Registration is finished.Please login.');

} else {
			$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Email address is already taken.');
}

} else {
		$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Enter valid email address');
}// checkIsEmailValid

} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Passwords need to be same.');
}// checkIsPasswordsSame

} else {

$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , fill all fields in registration form.');
}// checkIsRegosterFormFieldsEmpty

}// userRegistration

private function checkIsLoginFormEmpty($email , $password ){
if( !empty($email) && !empty($password )){

	return true;
} else {
	return false;
}


}// checkIsLoginFormEmpty

public function userLogin($email , $password ){

if( $this -> checkIsEmailValid($email)){
if( $this -> checkIsLoginFormEmpty($email , $password)){
$active = 1 ;
$banned = 0 ;
$sql = 'select * from users  where email = :email and active = :active and banned = :banned     limit  1 ';
$query = $this -> connect() -> prepare($sql);
$query -> bindParam( ':email' , $email );
$query -> bindParam( ':active' , $active );
$query -> bindParam( ':banned' , $banned );

$query -> execute();
$results = $query -> fetchAll();
if( count($results) > 0 ){
foreach($results as $result ){

$hashed_password = $result['password'];

if( password_verify($password, $hashed_password)){
$_SESSION['logged_in'] = 1 ;
$_SESSION['user_id'] = $result['id'];
$_SESSION['first_name'] = $result['first_name'];
$_SESSION['last_name'] = $result['last_name'];
$_SESSION['state'] = $result['state'];
$_SESSION['city'] = $result['city'];
$_SESSION['postal_code'] = $result['postal_code'];
$_SESSION['address'] = $result['address'];
$_SESSION['phone_number'] = $result['phone_number'];
$_SESSION['banned'] = $result['banned'];
$_SESSION['active'] = $result['active'];
$_SESSION['created_at'] = $result['created_at'];
$_SESSION['is_admin'] = $result['is_admin'];

header('Location:my-account.php');

exit();




} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Wrong email or password . Please try again.');
}// password_verify

}// endforeach

} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Wrong email or password . Please try again.');
}
} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , fill all fields in form..');
}// checkIsLoginFormEmpty

} else {
	$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$msg->error('Please , enter valid email address.');
}// checkIsEmailValid


}// userLogin











}// User

