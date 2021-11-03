    <!-- Start Items Grid Area -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Products</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
                            Ipsum available, but the majority have suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">

<?php 
$ads = new Ad();

if( count($ads -> getAllAdsInFrontPage()['ads']) > 0 ){


foreach($ads -> getAllAdsInFrontPage()['ads'] as $ad){
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
                                        <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
                                        <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> 


<?php echo $timeago->timeago($ad['created_at']); ?>


                                          </a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <p class="price">Start From: <span><?php echo $ad['price'] ?>
                                <?php echo $ads -> getCurrencyDetails($ad['currency_id'])['title']; ?></span></p>
                                    <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>

<?php

}// endforeach

if( count($ads -> getAllAds()['ads']) > 0 ){
    $pages = $ads -> getAllAds()['pages'];
?>
<nav>
    <ul class="pagination d-flex justify-content-center flex-wrap pagination-rounded-flat pagination-success">
<?php 

for( $x = 1 ; $x <= $pages; $x++){

    $perPage = $ads -> getAllAds()['per-page'];

?>
<li class="page-item"><a class="page-link" data-abc="true" href="index.php?page=<?php echo $x; ?>&per-page=<?php echo $perPage; ?>"><?php echo $x ?></a></li>


<?php
}// end for



 ?>        


    </ul>
</nav>


<?php


}


} else {

    echo 'There is no ads.';
}


 ?>


      



                </div>
            </div>
        </div>
    </section>
    <!-- /End Items Grid Area -->

   