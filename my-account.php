<?php require_once 'include/db.inc.php' ?>
<?php require_once 'include/class_autoloader.inc.php' ?>
<?php require_once 'include/config.inc.php' ?>
<?php require_once 'include/FlashMessages.php'; ?>
<?php $msg = new \Plasticbrain\FlashMessages\FlashMessages(); ?>
<?php require_once 'include/timeago.class.php'; ?>
<?php $timeago = new get_timeago; ?>
<?php  

$user = new User();
if( !$user -> checkIsUserLoggedIn()){

    header('Location:login.php');
    exit();
}



?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
   <?php require_once 'partials/__head.php' ?>
 
   
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
    body{
    background: #f5f5f5;
    margin-top:20px;
}

.ui-w-80 {
    width: 80px !important;
    height: auto;
}

.btn-default {
    border-color: rgba(24,28,33,0.1);
    background: rgba(0,0,0,0);
    color: #4E5155;
}

label.btn {
    margin-bottom: 0;
}

.btn-outline-primary {
    border-color: #26B4FF;
    background: transparent;
    color: #26B4FF;
}

.btn {
    cursor: pointer;
}

.text-light {
    color: #babbbc !important;
}

.btn-facebook {
    border-color: rgba(0,0,0,0);
    background: #3B5998;
    color: #fff;
}

.btn-instagram {
    border-color: rgba(0,0,0,0);
    background: #000;
    color: #fff;
}

.card {
    background-clip: padding-box;
    box-shadow: 0 1px 4px rgba(24,28,33,0.012);
}

.row-bordered {
    overflow: hidden;
}

.account-settings-fileinput {
    position: absolute;
    visibility: hidden;
    width: 1px;
    height: 1px;
    opacity: 0;
}
.account-settings-links .list-group-item.active {
    font-weight: bold !important;
}
html:not(.dark-style) .account-settings-links .list-group-item.active {
    background: transparent !important;
}
.account-settings-multiselect ~ .select2-container {
    width: 100% !important;
}
.light-style .account-settings-links .list-group-item {
    padding: 0.85rem 1.5rem;
    border-color: rgba(24, 28, 33, 0.03) !important;
}
.light-style .account-settings-links .list-group-item.active {
    color: #4e5155 !important;
}
.material-style .account-settings-links .list-group-item {
    padding: 0.85rem 1.5rem;
    border-color: rgba(24, 28, 33, 0.03) !important;
}
.material-style .account-settings-links .list-group-item.active {
    color: #4e5155 !important;
}
.dark-style .account-settings-links .list-group-item {
    padding: 0.85rem 1.5rem;
    border-color: rgba(255, 255, 255, 0.03) !important;
}
.dark-style .account-settings-links .list-group-item.active {
    color: #fff !important;
}
.light-style .account-settings-links .list-group-item.active {
    color: #4E5155 !important;
}
.light-style .account-settings-links .list-group-item {
    padding: 0.85rem 1.5rem;
    border-color: rgba(24,28,33,0.03) !important;
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



<br><br><br>

<div class="container light-style flex-grow-1 container-p-y">

    <h4 class="font-weight-bold py-3 mb-4">
      Account settings
    </h4>

    <div class="card overflow-hidden">
      <div class="row no-gutters row-bordered row-border-light">
        <div class="col-md-3 pt-0">
          <div class="list-group list-group-flush account-settings-links">
            <a class="list-group-item list-group-item-action active" data-toggle="list" href="#account-general">General</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-change-password">Change password</a>


            <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-notifications">Notifications</a>
          </div>
        </div>
        <div class="col-md-9">
          <div class="tab-content">
            <div class="tab-pane fade active show" id="account-general">
<?php 
$user = new User();
$user_id = $_SESSION['user_id'];
$first_name = $user -> getUserDetailsById($user_id)['first_name'];
$last_name = $user -> getUserDetailsById($user_id)['last_name'];
$email = $user -> getUserDetailsById($user_id)['email'];
$state = $user -> getUserDetailsById($user_id)['state'];
$city = $user -> getUserDetailsById($user_id)['city'];
$postal_code = $user -> getUserDetailsById($user_id)['postal_code'];
$address = $user -> getUserDetailsById($user_id)['address'];
$phone_number = $user -> getUserDetailsById($user_id)['phone_number'];

if( isset($_POST['changeAccount'])){
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['email'];
$state = $_POST['state'];
$city = $_POST['city'];
$postal_code = $_POST['postal_code'];;
$address = $_POST['address'];
$phone_number = $_POST['phone_number'];

$user -> changeUserAccount($first_name , $last_name , $email , $state , $city , $postal_code , $address , $phone_number );

}// main isset
echo '<br>';
echo '<br>';

 $msg -> display();
 ?>
             

              <form action="my-account.php" method="POST">
                  
              

              <div class="card-body">
                <div class="form-group">
                  <label class="form-label">First name</label>
                  <input type="text" class="form-control mb-1" name="first_name" value="<?php echo $first_name; ?>">
                </div>
                <div class="form-group">
                  <label class="form-label">Last name</label>
                  <input type="text" class="form-control" name="last_name" value="<?php echo $last_name; ?>">
                </div>
                <div class="form-group">
                  <label class="form-label">E-mail</label>
                  <input type="text" class="form-control mb-1" name="email" value="<?php echo $email; ?>">
                  <div class="alert alert-warning mt-3">
                    Your email is confirmed.
                  </div>
                </div>
                <div class="form-group">
                  <label class="form-label">State</label>
                  <input type="text" class="form-control" name="state" value="<?php echo $state; ?>">
                </div>                
                <div class="form-group">
                  <label class="form-label">City</label>
                  <input type="text" class="form-control" name="city" value="<?php echo $city; ?>">
                </div>                
                <div class="form-group">
                  <label class="form-label">Postal code</label>
                  <input type="text" class="form-control" name="postal_code" value="<?php echo $postal_code; ?>">
                </div>                
                <div class="form-group">
                  <label class="form-label">Address</label>
                  <input type="text" class="form-control" name="address" value="<?php echo $address; ?>">
                </div>                
                <div class="form-group">
                  <label class="form-label">Phone number</label>
                  <input type="text" class="form-control" name="phone_number" value="<?php echo $phone_number; ?>">
                </div>                
                 <div class="text-right mt-3">
      <button type="submit" class="btn btn-primary" name="changeAccount" >Change account</button>&nbsp;
      
    </div>
</form>

              </div>

            </div>
            <div class="tab-pane fade" id="account-change-password">
              <div class="card-body pb-2">
<form action="" method="POST">

          

                <div class="form-group">
                  <label class="form-label">New password</label>
                  <input type="password" class="form-control">
                </div>

                <div class="form-group">
                  <label class="form-label">Repeat new password</label>
                  <input type="password" class="form-control">
                </div>
     <div class="text-right mt-3">
      <button type="button" class="btn btn-primary">Save changes</button>&nbsp;
      
    </div>
</form>
              </div>
            </div>


            <div class="tab-pane fade" id="account-notifications">
              <div class="card-body pb-2">

                <h6 class="mb-4">Activity</h6>

                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Email me when someone comments on my article</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Email me when someone answers on my forum thread</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Email me when someone follows me</span>
                  </label>
                </div>
              </div>
              <hr class="border-light m-0">
              <div class="card-body pb-2">

                <h6 class="mb-4">Application</h6>

                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">News and announcements</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Weekly product updates</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Weekly blog digest</span>
                  </label>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    

  </div>

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