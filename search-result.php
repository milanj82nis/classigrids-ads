<?php ob_start(); ?>
<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php require_once 'include/timeago.class.php' ?>
<?php $timeago = new get_timeago; ?>
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


<?php require_once 'partials/__header.php' ?>

<?php require_once 'partials/__hero_section.php' ?>


<br><br><br>

    <!-- Start Items Grid Area -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Search results</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
                            Ipsum available, but the majority have suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">

<?php 
$ads = new Ad();

$keyword = $_GET['keyword'];
$location = $_GET['location'];
$sub_category_id = $_GET['sub_category_id'];
if( !$keyword ){
    header('Location:index.php');
    die();
}


if( count($ads -> searchAds( $keyword , $sub_category_id , $location )['ads']) > 0 ){


foreach($ads -> searchAds( $keyword , $sub_category_id , $location )['ads'] as $ad){
$user_id = $ad['user_id'];
$sub_category_id = $ad['sub_category_id'];
$first_name = $ads -> getUserDetails($user_id)['first_name'];
$last_name = $ads -> getUserDetails($user_id)['last_name'];
$subCategory = $ads -> getSubCategoryDetails($sub_category_id)['title'];


?>


                    <div class="col-lg-4 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image">
                                <a href="view-ad.php?id=<?php echo $ad['id']; ?>" class="thumbnail"><img src="uploads/<?php echo current(explode('|' , $ad['images']));  ?>" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">
                                        <a href="view-ad.php?id=<?php echo $ad['id']; ?>"><img src="assets/images/items-grid/author-1.jpg" alt="#">
                                            <span><?php echo $first_name; ?> <?php echo $last_name; ?></span></a>
                                    </div>



                        <?php
if( $ad['free_delivery'] == 1 ){
?>
 <p class="sale">Free delivery</p>
    <?php
}

?>

                                    
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <a href="view-category.php?id=<?php echo $sub_category_id;  ?>" class="tag"><?php echo $subCategory; ?></a>
                                    <h3 class="title">
                                        <a href="view-ad.php?id=<?php echo $ad['id']; ?>"><?php echo $ad['title'] ?></a>
                                    </h3>
                                    <p class="update-time">Last Updated: 
<?php echo $timeago->timeago($ad['updated_at']); ?>


                                        


                                    </p>
                                    <ul class="rating">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><a href="javascript:void(0)">(35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> 
<?php echo $ads -> getConditionDetails($ad['condition_id'])['title']; ?>

                                        </a></li>
                                        <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> 


<?php echo $timeago->timeago($ad['created_at']); ?>


                                          </a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <p class="price">Price : <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['slug']; ?></span></p>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>

<?php

}// endforeach


if( count($ads -> searchAds( $keyword , $sub_category_id , $location )['ads']) > 0 ){
    $pages = $ads -> searchAds( $keyword , $sub_category_id , $location )['pages'];
?>
<nav>
    <ul class="pagination d-flex justify-content-center flex-wrap pagination-rounded-flat pagination-success">
<?php 

for( $x = 1 ; $x <= $pages; $x++){

    $perPage = $ads -> searchAds( $keyword , $sub_category_id , $location )['per-page'];

?>
<li class="page-item">
    <a class="page-link" data-abc="true" href="search-result.php?keyword=<?php echo $keyword; ?>&sub_category_id=<?php echo $sub_category_id; ?>&location=<?php echo $location; ?>&page=<?php echo $x; ?>&per-page=<?php echo $perPage; ?>"><?php echo $x ?></a>
</li>


<?php
}// end for



 ?>        


    </ul>
</nav>


<?php


}



} else {
?>
<div class="col-md-4">
<div class="alert alert-danger" role="alert">
 No ads for this search
</div>
</div>
<?php
   
}


 ?>


      



                </div>
            </div>
        </div>
    </section>
    <!-- /End Items Grid Area -->

   

<br><br><br>



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
<?php ob_end_flush(); ?>