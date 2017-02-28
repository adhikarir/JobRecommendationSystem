<?php include('header.php') ?>
 <div class="container">
 <div class="row">
   
 
     <?php 
     require_once('array.php') ;

/**
* 
*/

     $job = new job();
     $helper= new helper();

//print_r($job->JobList(1)) ;
 if(isset($_GET['id'])){
    $id=($_GET['id']);
}else{
    $id=1;
    } ?>  
    <div class="page-header">
      <h3>Recommended Job<small>with respect to matching cv and vacency</small></h3>
    </div>

<div class="table-responsive">
<table class="table table-bordered table-hover">
    <thead>
        <tr>
            <th>cv id</th>
            <th>Job ID</th>
            <th>Job Category</th>
            <th>Skill</th>
            <th>Description</th>
        </tr>
    </thead>

    <?php

     foreach ($job->JobList($id) as $key => $value) {
        ?>
    
    <tr>
        <td><?php echo $id ?></td>
        <td><?php echo $helper->getjobCategoryName($value['job_category_id']) ?></td>
        <td><?php echo $helper->getjobSubCategoryName($value['job_sub_category_id']) ?></td>
       <td> <?php echo implode(',', $helper->getSkillName($value['skill_id']));?></td>
        <td><?php echo $value['job_description'] ?></td>

    </tr>
    <?php }


     ?>

    </table>
</div>


     <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
         
     </div>
     <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
          <form action="" method="GET" role="form">
         <legend>Find the job for freelancer</legend><div class="form-group">
             <label for="">label</label>
             <input type="text" class="form-control" id="" name="id" placeholder="Enter Freelancer Id" required>
         </div>
         <button type="submit" id="submit" class="btn btn-primary">Submit</button>
     </form>
     </div>
 </div>
</div>
<?php include('footer.php') ?>

<script type="text/javascript">
    $(document).ready(function(){
        $('#submit').on('click',function(){
             alertify.confirm("This is a confirm dialog.",
  function(){
    alertify.success('Ok');
  },
  function(){
    alertify.error('Cancel');
  });
         });
    })
   
</script>

