<?php include('header.php');
include('array.php');
?>
 <div class="container">
   <?php
$data = new analysis();
echo $data->showDataInMatrixForm();
echo $data->sortArrayWithDecendingOrder();

 

 include('footer.php') ?>