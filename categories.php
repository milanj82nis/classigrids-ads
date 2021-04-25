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
</head>

<body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->

<?php require_once 'partials/__preloader.php' ?>

<?php require_once 'partials/__header.php' ?>

<?php require_once 'partials/__hero_section.php' ?>





<div class="container-fluid mt-5 mb-5">
    <div class="row g-2">
        <div class="col-md-3">

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
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" > 
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
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" > 
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
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" > 
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
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" > 
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
foreach( $ads -> getAllAds() as $ad ){
?>

                <div class="col-md-4">
                    <div class="product py-4"> <span class="off bg-success">-25% OFF</span>
                        <div class="text-center"> <img src="https://i.imgur.com/nOFet9u.jpg" width="200"> </div>
                        <div class="about text-center">
                            <h5>XRD Active Shoes</h5> <span>$1,999.99</span>
                        </div>
                        <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                            <div class="add"> <span class="product_fav">
                                <i class="fas fa-heart-o" aria-hidden="true"></i></span> <span class="product_fav"><i class="fas fa-opencart"></i></span> </div>
                        </div>
                    </div>
                </div>
<?php

}


} catch ( PDOException $e ){
    echo $e -> getMessage();
}

?>

                
            </div>
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