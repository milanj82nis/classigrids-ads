<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php require_once 'include/timeago.class.php' ?>
<?php $timeago = new get_timeago; ?>
<?php 
$user = new User();
if ( !$user -> checkIsUserLoggedIn()){

    header('Location:login.php');
    die();
}

 ?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
   <?php require_once 'partials/__head.php' ?>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
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




<div class="container">
    <br><br>
<h1>My orders</h1>

<br><br><br>



<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Created at</th>
                <th colspan="1">Action</th>
            </tr>
        </thead>
        <tbody>

<?php 

try {
$ad = new Ad();
$orders = $ad -> getAllUserOrders();

foreach ( $orders as $order ){

?>

  <tr>
                <td><?php echo $order['id'] ?></td>
                <td><?php echo $ad -> viewAdInfoByAdID($order['ad_id'])['title']  ?></td>
                <td><?php echo $order['created_at'] ;?></td>
                <td>

<form action="">
    
    <button class="btn btn-primary">View</button>
    <button class="btn btn-danger">Delete</button>
</form>

                </td>
                
            </tr>

<?php

}

} catch ( PDOException $e ){
    echo $e -> getMessage();
}

 ?>



          
            
        
         
        </tbody>
        <tfoot>
                       <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Created at</th>
                <th colspan="1">Action</th>
            </tr>
        </tfoot>
    </table>
<br><br><br><br><br><br><br><br><br>
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
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</body>

</html>