<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php 

$ads = new Ad();

?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
   <?php require_once 'partials/__head.php' ?>
<style type="text/css">

    body {
    background-color: #eee
}

.t-products {
    background-image: linear-gradient(to right top, #5629c0, #5625cb, #5620d5, #551ae0, #5412eb);
    color: #fff;
    border-radius: 3px
}

.processor {
    background-color: #fff;
    margin-top: 5px;
    border-bottom: 1px solid #eee
}

.brand {
    background-color: #fff;
    border-bottom: 1px solid #eee
}

.type {
    background-color: #fff
}

.product {
    padding: 10px;
    background-color: #fff;
    border-radius: 5px;
    position: relative
}

.about span {
    color: #5629c0;
    font-size: 16px
}

.cart-button button {
    font-size: 12px;
    color: #fff;
    background-color: #5629c0;
    height: 38px
}

.cart-button button:focus,
button:active {
    font-size: 12px;
    color: #fff;
    background-color: #5629c0;
    box-shadow: none
}

.product_fav i {
    line-height: 40px;
    color: #5629c0;
    font-size: 15px
}

.product_fav {
    display: inline-block;
    width: 36px;
    height: 39px;
    background: #FFFFFF;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
    border-radius: 11%;
    text-align: center;
    cursor: pointer;
    margin-left: 3px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease
}

.product_fav:hover {
    background: #5629c0
}

.product_fav:hover i {
    color: #fff
}

.about {
    margin-top: 12px
}

.off {
    position: absolute;
    left: 65%;
    top: 6%;
    width: 80px;
    text-align: center;
    height: 30px;
    line-height: 8px;
    border-radius: 5px;
    font-size: 13px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff
}</style>
<link rel="stylesheet" type="text/css" href="assets/css/all.min.css">
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





<div class="container-fluid mt-5 mb-5">
    <div class="row g-2">
        <div class="col-md-3">
<form action="" method="GET">
            <div class="type p-2 mb-2">
                <div class="heading d-flex justify-content-between align-items-center">
                    <h6 class="text-uppercase">Categories</h6> <span>--</span>
                </div>
<?php
try{



foreach ($ads -> getAllSubCategories() as $subCategory ){
?>

<div class="d-flex justify-content-between mt-2">
        <div class="form-check"> 
            <input class="form-check-input" type="checkbox" value="<?php echo $subCategory['id'] ?>" onChange="this.form.submit()" name="sub_category_id" id="flexCheckChecked" > 
            <label class="form-check-label" for="flexCheckChecked"> <?php echo $subCategory['title'] ?> </label> </div> <span>28</span>
                </div>
<?php
}// endForeach



} catch( PDOException $e ){

    echo $e -> getMessage();

}



?>               
              
              

            </div>


            <div class="type p-2 mb-2">
                <div class="heading d-flex justify-content-between align-items-center">
                    <h6 class="text-uppercase">Conditions</h6> <span>--</span>
                </div>
<?php
try{



foreach ($ads -> getAllConditions() as $condition ){
?>

<div class="d-flex justify-content-between mt-2">
        <div class="form-check"> 
            <input class="form-check-input" type="checkbox"  value="<?php echo $condition['id'] ?>" onChange="this.form.submit()" name="condition_id"  id="flexCheckChecked" > 
            <label class="form-check-label" for="flexCheckChecked"> <?php echo $condition['title'] ?> </label> </div> <span>28</span>
                </div>
<?php
}// endForeach



} catch( PDOException $e ){

    echo $e -> getMessage();

}



?>               
              
              

            </div>
            <div class="type p-2 mb-2">
                <div class="heading d-flex justify-content-between align-items-center">
                    <h6 class="text-uppercase">Payment methods</h6> <span>--</span>
                </div>
<?php
try{



foreach ($ads -> getAllPaymentMethods() as $paymentMethod ){
?>

<div class="d-flex justify-content-between mt-2">
        <div class="form-check"> 
            <input class="form-check-input" type="checkbox"  value="<?php echo $paymentMethod['id'] ?>" onChange="this.form.submit()" name="payment_id"  id="flexCheckChecked" > 
            <label class="form-check-label" for="flexCheckChecked"> <?php echo $paymentMethod['title'] ?> </label> </div> <span>28</span>
                </div>
<?php
}// endForeach



} catch( PDOException $e ){

    echo $e -> getMessage();

}



?>               
              
              

            </div>
            <div class="type p-2 mb-2">
                <div class="heading d-flex justify-content-between align-items-center">
                    <h6 class="text-uppercase">Sending Methods</h6> <span>--</span>
                </div>
<?php
try{



foreach ($ads -> getAllSendingMethods() as $sendingMethod ){
?>

<div class="d-flex justify-content-between mt-2">
        <div class="form-check"> 
            <input class="form-check-input" type="checkbox"  value="<?php echo $sendingMethod['id'] ?>" onChange="this.form.submit()" name="sending_id"  id="flexCheckChecked" > 
            <label class="form-check-label" for="flexCheckChecked"> <?php echo $sendingMethod['title'] ?> </label> </div> <span>28</span>
                </div>
<?php
}// endForeach



} catch( PDOException $e ){

    echo $e -> getMessage();

}



?>               
              
              

            </div>
 



        </div>
        <div class="col-md-9">
            <div class="row g-2">


<?php
try {

$ads = new Ad();
$sub_category_id = isset($_GET['sub_category_id']) ? $_GET['sub_category_id'] : null;
$sending_id = isset($_GET['sending_id']) ? $_GET['sending_id'] : null;
$payment_id = isset($_GET['payment_id']) ? $_GET['payment_id'] : null;
$condition_id = isset($_GET['condition_id']) ? $_GET['condition_id'] : null;

if( $sending_id){


$ads -> filterAdsBySendingMethod($sending_id);

if( count($ads -> filterAdsBySendingMethod($sending_id)  )== 0 ){

    echo '<br><h4>There is no ads for this sending method.</h4>';
} else {
foreach( $ads -> filterAdsBySendingMethod($sending_id) as $ad ){
?>



                <div class="col-md-4">
                    <div class="product py-4"><?php
if( $ad['free_delivery'] == 1 ){
?>
 <span class="off bg-success">Free delivery
 </span>
    <?php
}

?>
                        <div class="text-center"> 
                            <img src="uploads/<?php echo current(explode('|' , $ad['images']));  ?>" width="200">
                             </div>
                        <div class="about text-center">
                            <h5><?php echo  substr($ad['title'] , 0 , 20 ) ?></h5> <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['title']; ?>
                            </span>
                        </div>
                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">View Ad</button>
                              <div class="add"> <span class="product_fav">
                                <i class="fas fa-heart" aria-hidden="true"></i></span> <span class="product_fav"><i class="fas fa-user"></i></span> </div>
                        </div>
                    </div>
                </div>
<?php

}// endforeach

}


} else if ($sub_category_id)  {

$ads -> filterAdsBySubCategory($sub_category_id);

if( count($ads -> filterAdsBySubCategory($sub_category_id)  )== 0 ){

    echo '<br><h4>There is no ads in this category.</h4>';

} else {

foreach( $ads -> filterAdsBySubCategory($sub_category_id) as $ad ){
?>
                  <div class="col-md-4">
                    <div class="product py-4"><?php
if( $ad['free_delivery'] == 1 ){
?>
 <span class="off bg-success">Free delivery
 </span>
    <?php
}

?>
                        <div class="text-center"> 
                            <img src="uploads/<?php echo current(explode('|' , $ad['images']));  ?>" width="200">
                             </div>
                        <div class="about text-center">
                            <h5><?php echo  substr($ad['title'] , 0 , 20 ) ?></h5> <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['title']; ?>
                            </span>
                        </div>
                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">View Ad</button>
                              <div class="add"> <span class="product_fav">
                                <i class="fas fa-heart" aria-hidden="true"></i></span> <span class="product_fav"><i class="fas fa-user"></i></span> </div>
                        </div>
                    </div>
                </div>
<?php

}// endforeach

}

} else if ($payment_id)  {


$ads -> filterAdsByPaymentMethod($payment_id);

if( count($ads -> filterAdsByPaymentMethod($payment_id)  )== 0 ){

    echo '<br><h4>There is no ads in this payment method.</h4>';

} else {
    
foreach( $ads -> filterAdsByPaymentMethod($payment_id) as $ad ){
?>
     <div class="col-md-4">
                    <div class="product py-4"><?php
if( $ad['free_delivery'] == 1 ){
?>
 <span class="off bg-success">Free delivery
 </span>
    <?php
}

?>
                        <div class="text-center"> 
                            <img src="uploads/<?php echo current(explode('|' , $ad['images']));  ?>" width="200">
                             </div>
                        <div class="about text-center">
                            <h5><?php echo  substr($ad['title'] , 0 , 20 ) ?></h5> <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['title']; ?>
                            </span>
                        </div>
                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">View Ad</button>
                              <div class="add"> <span class="product_fav">
                                <i class="fas fa-heart" aria-hidden="true"></i></span> <span class="product_fav"><i class="fas fa-user"></i></span> </div>
                        </div>
                    </div>
                </div>
<?php

}// endforeach

}

} else if ($condition_id)  {


$ads -> filterAdsByCondition($condition_id);

if( count($ads -> filterAdsByCondition($condition_id)  )== 0 ){

    echo '<br><h4>There is no ads in this condition.</h4>';

} else {
    
foreach( $ads -> getAllAds() as $ad ){
?>
     <div class="col-md-4">
                    <div class="product py-4"><?php
if( $ad['free_delivery'] == 1 ){
?>
 <span class="off bg-success">Free delivery
 </span>
    <?php
}

?>
                        <div class="text-center"> 
                            <img src="uploads/<?php echo current(explode('|' , $ad['images']));  ?>" width="200">
                             </div>
                        <div class="about text-center">
                            <h5><?php echo  substr($ad['title'] , 0 , 20 ) ?></h5> <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['title']; ?>
                            </span>
                        </div>
                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">View Ad</button>
                            <div class="add"> <span class="product_fav">
                                <i class="fas fa-heart" aria-hidden="true"></i></span> <span class="product_fav"><i class="fas fa-user"></i></span> </div>
                        </div>
                    </div>
<?php

}// endforeach

}
} else   {



foreach( $ads -> getAllAds() as $ad ){
?>

                   <div class="col-md-4">
                    <div class="product py-4"><?php
if( $ad['free_delivery'] == 1 ){
?>
 <span class="off bg-success">Free delivery
 </span>
    <?php
}

?>
                        <div class="text-center"> 
                            <img src="uploads/<?php echo current(explode('|' , $ad['images']));  ?>" width="200">
                             </div>
                        <div class="about text-center">
                            <h5><?php echo  substr($ad['title'] , 0 , 20 ) ?></h5> <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['title']; ?>
                            </span>
                        </div>
                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">View Ad</button>
                            <div class="add"> <span class="product_fav">
                                <i class="fas fa-heart" aria-hidden="true"></i></span> <span class="product_fav"><i class="fas fa-user"></i></span> </div>
                        </div>
                    </div>
                </div>
<?php

}// endforeach
}


} catch ( PDOException $e ){
    echo $e -> getMessage();
}

?>

                
            </div>
              </form>
        </div>
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
<script type="text/javascript" src="assets/js/all.min.js"></script>

</body>

</html>