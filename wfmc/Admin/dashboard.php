<?php
define('TITLE', 'Admin Dashboard');
define('PAGE', 'dashboard');
include('includes/header.php'); 
include('../dbConnection.php');
session_start();
 if(isset($_SESSION['is_adminlogin'])){
  $aEmail = $_SESSION['aEmail'];
 } else {
  echo "<script> location.href='login.php'; </script>";
 }
 $sql = "SELECT max(request_id) FROM submitrequest_tb";
 $result = $conn->query($sql);
 $row = mysqli_fetch_row($result);
 $submitrequest = $row[0];

 $sql = "SELECT max(request_id) FROM assignwork_tb";
 $result = $conn->query($sql);
 $row = mysqli_fetch_row($result);
 $assignwork = $row[0];

 $sql = "SELECT * FROM riders_tb";
 $result = $conn->query($sql);
 $totaltech = $result->num_rows;

?>
<div class="col-sm-9 col-md-10">
  <div class="row mx-5 text-center">
    <div class="col-sm-4 mt-5">
      <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
        <div class="card-header">REQUEST RECEIVED</div>
        <div class="card-body">
          <h4 class="card-title">
            <?php echo $submitrequest; ?>
          </h4>
          <a class="btn text-white" href="request.php">VIEW</a>
        </div>
      </div>
    </div>
    <div class="col-sm-4 mt-5">
      <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
        <div class="card-header">ASSIGNED WORK</div>
        <div class="card-body">
          <h4 class="card-title">
            <?php echo $assignwork; ?>
          </h4>
          <a class="btn text-white" href="work.php">VIEW</a>
        </div>
      </div>
    </div>
    <div class="col-sm-4 mt-5">
      <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
        <div class="card-header">NO. OF RIDERS</div>
        <div class="card-body">
          <h4 class="card-title">
            <?php echo $totaltech; ?>
          </h4>
          <a class="btn text-white" href="technician.php">VIEW</a>
        </div>
      </div>
    </div>
  </div>
  <div class="mx-5 mt-5 text-center">
    <!--Table-->
    <p class=" bg-dark text-white p-2">LIST OF REQUESTOR'S (DONORS)</p>
    <?php
    $sql = "SELECT * FROM requesterlogin_tb";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
 echo '<table class="table">
  <thead>
   <tr>
    <th scope="col">Requester ID</th>
    <th scope="col">Name</th>
    <th scope="col">Email</th>
   </tr>
  </thead>
  <tbody>';
  while($row = $result->fetch_assoc()){
   echo '<tr>';
    echo '<th scope="row">'.$row["r_login_id"].'</th>';
    echo '<td>'. $row["r_name"].'</td>';
    echo '<td>'.$row["r_email"].'</td>';
  }
 echo '</tbody>
 </table>';
} else {
  echo "0 Result";
}
?>
  </div>
</div>
</div>
</div>
<?php
include('includes/footer.php'); 
?>