<?php
require_once 'include/FlashMessages.php';


class User extends DbConnect{

public function checkIsUserLoggedIn(){

	if( isset($_SESSION['logged'])){
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













}// User

