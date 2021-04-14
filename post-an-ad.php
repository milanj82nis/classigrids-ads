<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php require_once 'include/FlashMessages.php'; 
$msg = new \Plasticbrain\FlashMessages\FlashMessages();
$user = new User();
if( !$user -> checkIsUserLoggedIn()){

    header('Location:login.php');
    exit();
}
$ad = new Ad;

?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
   <?php require_once 'partials/__head.php' ?>
<style type="text/css">

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: 'Poppins', sans-serif
 }

 body {
    
     min-height: 100vh
 }

 body::-webkit-scrollbar {
     display: none
 }

 .wrapper {
     max-width: 800px;
     margin: 80px auto;
     padding: 30px 45px;
     box-shadow: 5px 25px 35px #3535356b
 }

 .wrapper label {
     display: block;
     padding-bottom: 0.2rem
 }

 .wrapper .form .row {
     padding: 0.6rem 0
 }

 .wrapper .form .row .form-control {
     box-shadow: none
 }

 .wrapper .form .option {
     position: relative;
     padding-left: 20px;
     cursor: pointer
 }

 .wrapper .form .option input {
     opacity: 0
 }

 .wrapper .form .checkmark {
     position: absolute;
     top: 1px;
     left: 0;
     height: 20px;
     width: 20px;
     border: 1px solid #bbb;
     border-radius: 50%
 }

 .wrapper .form .option input:checked~.checkmark:after {
     display: block
 }

 .wrapper .form .option:hover .checkmark {
     background: #f3f3f3
 }

 .wrapper .form .option .checkmark:after {
     content: "";
     width: 10px;
     height: 10px;
     display: block;
     background: linear-gradient(45deg, #ce1e53, #8f00c7);
     position: absolute;
     top: 50%;
     left: 50%;
     border-radius: 50%;
     transform: translate(-50%, -50%) scale(0);
     transition: 300ms ease-in-out 0s
 }

 .wrapper .form .option input[type="radio"]:checked~.checkmark {
     background: #fff;
     transition: 300ms ease-in-out 0s
 }

 .wrapper .form .option input[type="radio"]:checked~.checkmark:after {
     transform: translate(-50%, -50%) scale(1)
 }

 #sub {
     display: block;
     width: 100%;
     border: 1px solid #ddd;
     padding: 10px;
     border-radius: 5px;
     color: #333
 }

 #sub:focus {
     outline: none
 }

 @media(max-width: 768.5px) {
     .wrapper {
         margin: 30px
     }

     .wrapper .form .row {
         padding: 0
     }
 }

 @media(max-width: 400px) {
     .wrapper {
         padding: 25px;
         margin: 20px
     }
 }

</style>
</head>

<body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->


<?php require_once 'partials/__header.php' ?>

<?php require_once 'partials/__hero_section.php' ?>


<div class="wrapper rounded bg-white">
    <div class="h3">Post an ad</div>
    <div class="form">

<?php
try {

   

if( isset($_POST['postAnAd'])){


$ad = new Ad();
$title = $_POST['title'];
$price = $_POST['price'];
$price_type_id = $_POST['price_type_id'];
$currency_id = $_POST['currency_id'];
$payment_id = $_POST['payment_id'];
$images = $_FILES['images'];
$youtube_link = $_POST['youtube_link'];
$description = $_POST['description'];
$condition_id = $_POST['condition_id'];
$sub_category_id = $_POST['sub_category_id'];
$amount = $_POST['amount'];
$sending_id = $_POST['sending_id'];
$free_delivery = isset($_POST['free_delivery']) ? 1 : 0 ;

$ad -> postAnAd($title , $price , $price_type_id , $currency_id , $payment_id , $images , 
$youtube_link , $description , $condition_id , $sub_category_id , $amount , $sending_id , $free_delivery );




}// postAnAd

} catch( PDOException $e ){
    echo $e -> getMessage();
}


 $msg -> display();
?>
         <form action="" method="post" enctype="multipart/form-data">
        <div class="row">
           
        <div class="col-md-12 mt-md-0 mt-3"> <label>Title</label> 
                <input type="text" class="form-control" name="title"> 
        </div>

        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Price</label> 
                <input type="text" class="form-control" name="price"> 
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Price type</label> 
                <select name="price_type_id" class="form-control">
                	<option >Select price type</option>

<?php 


try {


foreach ( $ad -> getAllPriceTypes() as $price_type ){
?>

<option value="<?php echo $price_type['id'];  ?>"><?php echo $price_type['title'];  ?></option>
<?php

}


} catch ( PDOException $e ){
	echo $e -> getMessage();
}

 ?>



                </select>
            </div>
        </div>
        <div class="row">
<div class="col-md-6 mt-md-0 mt-3"> 
	<label>Select currency</label> 
<select name="currency_id" class="form-control">
                	<option >Select currency</option>
                	
<?php 


try {


foreach ( $ad -> getAllCurrencies() as $currency ){
?>

<option value="<?php echo $currency['id'];  ?>"><?php echo $currency['title'];  ?></option>
<?php

}


} catch ( PDOException $e ){
	echo $e -> getMessage();
}

 ?>
                </select>            
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Payment method</label> 
              <select name="payment_id" class="form-control">
                    <option >Select payment</option>
                    <?php 


try {


foreach ( $ad -> getAllPaymentMethods() as $payment_method ){
?>

<option value="<?php echo $payment_method['id'];  ?>"><?php echo $payment_method['title'];  ?></option>
<?php

}


} catch ( PDOException $e ){
    echo $e -> getMessage();
}

 ?>
                </select>  
            </div>
        </div>

        

        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Images</label> 
                <input type="file" class="form-control" name="images[]" multiple="multiple"> 
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Youtube link</label> 
                <input type="text" class="form-control" name="youtube_link"> 
            </div>
        </div>

                <div class="row">
            <div class="col-md-12 mt-md-0 mt-3"> <label>Description</label> 
            	<textarea class="form-control" name="description" rows="5"></textarea>
               
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Condition</label> 
<select name="condition_id" class="form-control">
                	<option >Select condition</option>
<?php 


try {


foreach ( $ad -> getAllConditions() as $condition ){
?>

<option value="<?php echo $condition['id'];  ?>"><?php echo $condition['title'];  ?></option>
<?php

}


} catch ( PDOException $e ){
	echo $e -> getMessage();
}

 ?>
                </select>            
            </div>
<div class="col-md-6 mt-md-0 mt-3"><label>Select sub category</label>

<select name="sub_category_id" class="form-control">
                	<option >Select sub category</option>
<?php 


try {


foreach ( $ad -> getAllSubCategories() as $sub_category ){
?>

<option value="<?php echo $sub_category['id'];  ?>"><?php echo $sub_category['title'];  ?></option>
<?php

}


} catch ( PDOException $e ){
	echo $e -> getMessage();
}

 ?>
                </select>  

</div>



        </div>

        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Amount</label> 
                <input type="text" class="form-control" name="amount"> 
           
            </div>
<div class="col-md-6 mt-md-0 mt-3"><label>Sending method</label>

<select name="sending_id" class="form-control">
                	<option >Select sending</option>
<?php 


try {


foreach ( $ad -> getAllSendingMethods() as $sending_method ){
?>

<option value="<?php echo $sending_method['id'];  ?>"><?php echo $sending_method['title'];  ?></option>
<?php

}


} catch ( PDOException $e ){
	echo $e -> getMessage();
}

 ?>
                </select>  

</div>



        </div>
        


        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Free delivery</label> 
                <input type="checkbox" class="form-check-input"  name="free_delivery"> 
           
            </div>




        </div>
        





        <button class="btn btn-primary mt-3" type="submit" name="postAnAd">Post ad</button>
        

        </form>
    </div>
</div>




<?php require_once 'partials/__newsletter.php' ?>

<?php require_once 'partials/__footer.php' ?>

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script type="text/javascript">
        //========= Category Slider 
        tns({
            container: '.category-slider',
            items: 3,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: false,
            controls: true,
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 2,
                },
                768: {
                    items: 4,
                },
                992: {
                    items: 5,
                },
                1170: {
                    items: 6,
                }
            }
        });
    </script>
</body>

</html>