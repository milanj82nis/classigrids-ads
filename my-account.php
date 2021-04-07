<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php require_once 'include/FlashMessages.php'; 
$msg = new \Plasticbrain\FlashMessages\FlashMessages();

$user = new User();
if( !$user -> checkIsUserLoggedIn()){

    header('Location:my-account.php');
    exit();
}



?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
   <?php require_once 'partials/__head.php' ?>

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

<?php require_once 'partials/__categories_section.php' ?>

<?php require_once 'partials/__items_grid.php' ?>

<?php require_once 'partials/__why_chose_us.php' ?>

<?php require_once 'partials/__call_to_action.php' ?>


<?php require_once 'partials/__pricing_tables.php' ?>

<?php require_once 'partials/__how_works.php' ?>

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