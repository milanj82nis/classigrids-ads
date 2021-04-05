<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php require_once 'include/FlashMessages.php'; 
$msg = new \Plasticbrain\FlashMessages\FlashMessages();
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

<?php require_once 'partials/__preloader.php' ?>

<?php require_once 'partials/__header.php' ?>

<?php require_once 'partials/__hero_section.php' ?>


<div class="wrapper rounded bg-white">
    <div class="h3">User registration</div>
    <div class="form">

<?php
try {

   

if( isset($_POST['userRegistration'])){

$first_name = trim(htmlspecialchars($_POST['first_name']));
$last_name = trim(htmlspecialchars($_POST['last_name']));
$state = trim(htmlspecialchars($_POST['state']));
$city = trim(htmlspecialchars($_POST['city']));
$address = trim(htmlspecialchars($_POST['address']));
$postal_code = trim(htmlspecialchars($_POST['postal_code']));
$password = trim($_POST['password']);
$password_confirmation = trim($_POST['password_confirmation']);
$email = trim(htmlspecialchars($_POST['email']));
$phone_number = trim(htmlspecialchars($_POST['phone_number']));

$user = new User();

$user -> userRegistration($first_name , $last_name , $state , $city , $address , $postal_code , $password , $password_confirmation , $email , $phone_number );



}// userRegistration

} catch( PDOException $e ){
    echo $e -> getMessage();
}


 $msg -> display();
?>
         <form action="" method="post">
        <div class="row">
           
        <div class="col-md-6 mt-md-0 mt-3"> <label>First Name</label> 
                <input type="text" class="form-control" required="required" name="first_name"> 
        </div>
        <div class="col-md-6 mt-md-0 mt-3"> <label>Last Name</label> 
                <input type="text" class="form-control" required="required" name="last_name"> 
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>State</label> 
                <input type="text" class="form-control" required="required" name="state"> 
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>City</label> 
                <input type="text" class="form-control" required="required" name="city" > 
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Postal code</label> 
                <input type="text" class="form-control" required="required" name="postal_code"> 
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Address</label> 
                <input type="text" class="form-control" required="required" name="address" > 
            </div>
        </div>

        

        <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Email</label> 
                <input type="email" class="form-control" required="required" name="email"> 
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Phone Number</label> 
                <input type="tel" class="form-control" required="required" name="phone_number"> 
            </div>
        </div>

                <div class="row">
            <div class="col-md-6 mt-md-0 mt-3"> <label>Password</label> 
                <input type="password" class="form-control" required="required" name="password"> 
            </div>
            <div class="col-md-6 mt-md-0 mt-3"> <label>Repeat password</label> 
                <input type="password" class="form-control" required="required" name="password_confirmation"> 
            </div>
        </div>
        <button class="btn btn-primary mt-3" type="submit" name="userRegistration">Register</button>
        

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