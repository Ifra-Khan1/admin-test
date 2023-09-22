<?php
include('admin/includes/header.php');
include('admin/includes/sidebar.php');
include('admin/includes/topbar.php');
include('config.php');

if(isset($_POST['register'])){
    $cname = $_POST['cname'];
    $type = $_POST['type'];
    $email = $_POST['email'];
    $des = $_POST['des'];

    $check_email = "SELECT * from user1 where email = '$email' ";
    $run_email = mysqli_query($connection, $check_email);
     if(mysqli_num_rows($run_email) > 0){
        echo "Email already exist";
        }
        else{
        $insert = "INSERT INTO `user1` (`cname`, `ctype`, `email`, `descripition`) VALUES ('$cname', '$type', '$email','$des')";
        $connect_insert = mysqli_query($connection, $insert);
        if($connect_insert){
            echo "Category Add successful";
        }
        else{
            echo "Category Add failed";
        }
    }
}
?>
<div class="container">

<!-- Outer Row -->
<div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">
        <h2>Add Category</h2>
        <hr>
<form class="user" action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST">

<label for="Name">Id</label>
<input type="hidden" name="id" class="form-control "value = "<?php echo $row['id']?>">    
<div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <input type="text" class="form-control form-control-user" id="exampleFirstName"
                placeholder="Category Name" name="cname" required>
        </div>
        <div class="col-sm-6">
            <input type="text" class="form-control form-control-user" id="exampleLastName"
                placeholder="Category Type" name="type" required>
         </div>
    </div>
    <div class="form-group">
        <input type="email" class="form-control form-control-user" id="exampleInputEmail"
            placeholder="Email" name="email" required>
    </div>
    <div class="form-group">
        <input type="text" class="form-control form-control-user" id="exampleInputEmail"
            placeholder="Descripition" name="des" required>
    </div>
    <!-- <a class="btn btn-primary btn-user btn-block" name="register">
        Register Account
    </a> -->
    <input type="submit" class="btn btn-primary btn-user btn-block" name="register" >
    <hr>
                        
</form>

    </div>

</div>

</div>


</body>

</html>










<?php
include('admin/includes/footer.php');


?>