<?php
include('admin/includes/header.php');
include('admin/includes/sidebar.php');
include('admin/includes/topbar.php');
include('config.php');

$limit = 3;
if(isset($_GET['page'])){
  
  $getpgno = $_GET['page'];
}else{
  $getpgno = 1;
}
$offset = ($getpgno - 1) * $limit;

$fetch = "SELECT * FROM `user` where status = '1' order by id desc limit {$offset}, {$limit}";

$data = mysqli_query($connection, $fetch);
?>
 <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">
                <h2>Registerd users</h2>
                <hr>
            <table class="table table-warning">
                <thead class="bg-warning p-2 text-dark bg-opacity-10" style="opacity: 75%;">
                    <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = mysqli_fetch_assoc($data)) {
                     ?>
                    <tr>
                    <td><?php echo $row ['id']?></td>
                    <td><?php echo $row ['fname']?></td>
                    <td><?php echo $row ['lname']?></td>
                    <td><?php echo $row ['email']?></td>
                    <td ><a href="#" class="btn btn-success">Update</a></td>
                    <td ><a href="#" class="btn btn-danger">Delete</a></td>
                    
                </tr>
                <?php
                    }
                ?>
                </tbody>
            </table>

<?php
$fetchpage = "SELECT * from user";
$query = mysqli_query($connection, $fetchpage);

  if(mysqli_num_rows($query) > 0){
    $totalRecords = mysqli_num_rows($query);
    $totalpages = ceil($totalRecords / $limit);
    echo '<ul class="pagination">';
    if($getpgno > 1){
      echo '<li class="page-item"><a class="page-link" href="viewuser.php?page='.($getpgno - 1).'">prev</a></li>';

    }
    for($i = 1; $i <= $totalpages; $i++){
      $active = $i == $getpgno? "active" : "";
      echo '<li class="'.$active.' page-item"><a class="page-link" href="viewuser.php?page='.$i.'">'.$i.'</a></li>';
    }
    if($getpgno < $totalpages){
      echo '<li class="page-item"><a class="page-link" href="viewuser.php?page='.($getpgno + 1).'">next</a></li>';

    }

  }
  ?>
            </div>

        </div>

    </div>


</body>

</html>

<?php
include('admin/includes/footer.php');


?>