    <!-- Start Header Area -->
    <header class="header navbar-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="nav-inner">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="index.html">
                                <img src="assets/images/logo/logo.svg" alt="Logo">
                            </a>
                            <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav ms-auto">

                                    <li class="nav-item"><a href="index.php" aria-label="Toggle navigation">Home</a>
                                    <li class="nav-item"><a href="categories.php" aria-label="Toggle navigation">Categories</a>
                                    <li class="nav-item"><a href="about-us.php" aria-label="Toggle navigation">About us</a>
                                    <li class="nav-item"><a href="contact-us.php" aria-label="Toggle navigation">Contact</a>
                                    <li class="nav-item"><a href="advertising.php" aria-label="Toggle navigation">Advertising</a>
                                    </li>
                                   


                                </ul>
                            </div> <!-- navbar collapse -->
                            <div class="login-button">


<?php  
try {

$user = new User();


if( $user -> checkIsUserLoggedIn()){
?>
<ul>
                                    <li>
                                        <a href="my-account.php"><i class="lni lni-enter"></i> My account</a>
                                    </li>
                                    
                                </ul>
<?php
} else {

?>


                                <ul>
                                    <li>
                                        <a href="login.php"><i class="lni lni-enter"></i> Login</a>
                                    </li>
                                    <li>
                                        <a href="register.php"><i class="lni lni-user"></i> Register</a>
                                    </li>
                                </ul>

<?php

}

} catch( PDOException $e ){
    echo $e -> getMessage();
}


?>



                            </div>
                            <div class="button header-button">
                                <a href="javascript:void(0)" class="btn">Post an Ad</a>
                            </div>
                        </nav> <!-- navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    <!-- End Header Area -->
