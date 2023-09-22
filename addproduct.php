<?php
include('admin/includes/header.php');
include('admin/includes/sidebar.php');
include('admin/includes/topbar.php');
include('config.php');


if(isset($_POST['addpro'])){
    $pcat = $_POST['pcat'];
    $pname = $_POST['pname'];
    $price = $_POST['price'];
    $pdes = $_POST['des'];
    $pimage = $_FILES['image']['name'];
    $pimage_tmp = $_FILES['image']['tmp_name'];
    $pimage_size = $_FILES['image']['size'];
   
    $check_product = "SELECT * from produ where pname = '$pname'";
    $result = mysqli_query($connection, $check_product);
    if (mysqli_num_rows($result) > 0) {
        echo "<script> alert('Product already exist'); </script>";
    } else {
        $insert_pro = "INSERT INTO `produ` (`id`,`pname`, `price`, `des`, `image`) VALUES ('$pcat','$pname','$price','$pdes', '$pimage')
        ";
        $connection_insert = mysqli_query($connection, $insert_pro);
        move_uploaded_file($pimage_tmp, 'img/' . $pimage);
        if($connection_insert){
            echo "<script> alert('Product added successfully'); </script>";

        }
        // header('location:addcat.php');
    }


}

?>

<div class="container">

<!-- Outer Row -->
<div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">
        <h2>Add Product</h2>
        <hr>
<form class="user" action="<?php echo $_SERVER['PHP_SELF'];?>" enctype="multipart/form-data" method="POST">
    <div class="form-group row">
    <div class="col-sm-12 mb-3 mb-sm-0">
        <?php
                $product = "SELECT * from user1";
                $result1 = mysqli_query($connection, $product);
                if(mysqli_num_rows($result1) > 0) {

                
                ?>
                <select class="form-select" name="pcat" aria-label="Default select example">
                    <option selected>Select Category</option>
                    <?php
                    while($row = mysqli_fetch_assoc($result1)){
                    ?>
                    <option value="<?php echo $row['id']?>"><?php echo  $row['cname']?></option>
                    <?php
                    }  
                    }                
                    ?>
                </select>
                </div>
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <br>
            <input type="text" class="form-control form-control-user" id="exampleFirstName"
                placeholder="Product Name" name="pname" required>
        </div>
        <div class="col-sm-6">
             <br>
             <input type="number" class="form-control form-control-user" id="exampleLastName"
                placeholder="Price" name="price" required>
         </div>
    </div>
    <div class="form-group">
        <input type="text" class="form-control form-control-user" id="exampleInputEmail"
            placeholder="Descripition" name="des" required>
    </div>
    <div class="form-group row">
       
        <div class="col-sm-12">
        <label for="image"> Image </label>
                <input type="file" name="image" class="form-control">
         </div>
    </div>


    <input type="submit" class="btn btn-primary btn-user btn-block" name="addpro" >
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