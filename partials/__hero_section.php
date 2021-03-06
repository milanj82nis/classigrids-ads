    <!-- Start Hero Area -->
    <section class="hero-area overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                    <div class="hero-text text-center">
                        <!-- Start Hero Text -->
                        <div class="section-heading">
                            <h2 class="wow fadeInUp" data-wow-delay=".3s">Welcome to ClassiGrids</h2>
                            <p class="wow fadeInUp" data-wow-delay=".5s">Buy And Sell Everything From Used Cars To Mobile Phones And <br>Computers,
                                Or Search For Property, Jobs And More.</p>
                        </div>
                        <!-- End Search Form -->
                        <!-- Start Search Form -->
                        <div class="search-form wow fadeInUp" data-wow-delay=".7s">
<form action="search-result.php" method="GET">

                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-12 p-0">
                                    <div class="search-input">
                                        <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                                        <input type="text" name="keyword" id="keyword" placeholder="Product keyword">
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-12 p-0">
                                    <div class="search-input">
                                        <label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
                                        <select name="sub_category_id" id="category">
                                          
 <?php 
 $categories = new Ad();
 foreach ( $categories -> getAllSubCategories() as $subCategory ){
?>

 <option value="<?php echo $subCategory['id']; ?>"><?php echo $subCategory['title']; ?></option>


<?php
 }



  ?>                                           
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-12 p-0">
                                    <div class="search-input">
                                        <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                                        <select name="location" id="location">
                                            

<?php 

$locations = new Ad();
foreach( $locations -> getAllLocationsFromAdTable() as $location){
?>
    <option value="<?php echo $location['location']; ?>"><?php echo $location['location']; ?></option>

    <?php
}


 ?>


                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-12 p-0">
                                    <div class="search-btn button">
                                        <button class="btn" type="submit" name="searchAds"><i class="lni lni-search-alt"></i> Search</button>
                                    </div>
                                </div>
                            </div>
</form>
                        </div>
                        <!-- End Search Form -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Area -->
