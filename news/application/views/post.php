<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>News Portal</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<?php echo base_url('assets/css/styles.css');?>" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
   <?php include APPPATH.'views/includes/header.php';?>
        <!-- Page content-->
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Post content-->
                    <article>
                        <!-- Post header-->
                        <header class="mb-4">
                            <!-- Post title-->
                            <h1 class="fw-bolder mb-1"><?php  echo $viewdetails->newtitle;?></h1>
                            <!-- Post meta content-->
                            <div class="text-muted fst-italic mb-2"><?php  echo $viewdetails->newtitle;?></div>
                            <!-- Post categories-->
                            <a class="badge bg-secondary text-decoration-none link-light" href="#!"><?php  echo $viewdetails->category;?></a>
                            <a class="badge bg-secondary text-decoration-none link-light" href="#!"><?php  echo $viewdetails->subcategory;?></a>
                        </header>
                        <!-- Preview image figure-->
                        <figure class="mb-4"><img class="img-fluid rounded" src="<?php echo base_url('uploads/files/'. $viewdetails->Upload_Image);?>" alt="..." /></figure>
                        <!-- Post content-->
                        <section class="mb-5">
                            <p class="fs-5 mb-4"><?php echo $viewdetails->Description;?></p>
                            
                        </section>
                    </article>
                    <!-- Comments section-->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                            <?php
                                    if(count($comment)):
                                    $cnt=1;
                                    foreach($comment as $row):
                                    ?>
                                <div class="d-flex mb-4">
                                    <!-- Parent comment-->
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold"><?php echo $row->name; ?></div>
                                        <?php echo $row->comment; ?>
                                        
                                    </div>
                                </div>
                                
                                <?php 
                    $cnt=$cnt+1;
                    endforeach;
                    else:
                    ?>
                    <?php endif;?>
                                
                                <br>
                                <!-- Comment form-->
                               
                                <form id="contactForm">
                                <div class="row gx-5 mb-4">
                                    <div class="col-md-6">
                                        <label class="text-dark mb-2" for="inputName">Full name</label>
                                        <input class="form-control" name="name" id="name" type="text" placeholder="Full name">
                                        <input type="hidden" name="postid"id="postid" value="<?php echo $viewdetails->id;?>">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="text-dark mb-2" for="inputEmail">Email</label>
                                        <input class="form-control" name="email" id="email" type="email" placeholder="name@example.com">
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="text-dark mb-2" for="inputMessage">Message</label>
                                    <textarea class="form-control" name="comment" id="comment"  placeholder="Enter your message..." rows="4"></textarea>
                                </div>
                                <div class="text-center"><button class="btn btn-primary mt-4" id="butsave" type="submit">Submit Request</button></div>
                            </form>
                            
                                <!-- Comment with nested comments-->

                                <div class="alert alert-success alert-dismissible" id="success" style="display:none;">
	  <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                            </div>
                        </div>
                    </section>
                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                        <div class="card mb-4">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                        <?php echo form_open('Search/index',['class'=>'php-email-form']);?>
                        
                            <div class="input-group">
                                <input class="form-control" type="text" name="searchdata" id="searchdata" placeholder="Enter search term..."
                                 aria-label="Enter search term..." aria-describedby="button-search" />
                                 <input type="submit" name="submit" id="submit" class="btn btn-primary" value="Go!">
                                <!-- <button class="btn btn-primary" id="button-search" type="button">Go!</button> -->
                            </div>
                    </form>
                        </div>
                    </div>
                    <!-- Categories widget-->
       <div class="card mb-4">
                        <div class="card-header">Categories</div>
                        <div class="card-body">
                            <div class="row">
                            <?php
                  if(count($category)):
                  $cnt=1;
                  foreach($category as $row):
                  ?>
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                    <?php $cat= $row->name;?>
                                    <li> <?php echo anchor("Category/index/{$row->id}",$cat); ?></li>
                                    </ul>
                                </div>
                                <?php 
                    $cnt=$cnt+1;
                    endforeach;
                    else:
                    ?>
                    <tr>
                    <td colspan="5" style="color:red; text-align:center">No Record found</td>
                    </tr>
                    <?php endif;?>
  
                            </div>
                        </div>
                    </div>

                   <!-- Side widget-->
                   <div class="card mb-4">
                        <div class="card-header">Recent News</div>

                        <div class="card-body">
                        <?php
					if(count($viewdetail)):
                  $cnt=1;
                  foreach($viewdetail as $row):
                  ?>
                            <ul>
                                
                                <?php  $shiv= $row->newtitle;?>

                                <li><?php echo anchor("Welcome/post/{$row->id}",$shiv); ?></li>
                            
                            </ul>
                            <?php 
                    $cnt=$cnt+1;
                    endforeach;
                    else:
                    ?>
                    <tr>
                    <td colspan="5" style="color:red; text-align:center">No Record found</td>
                    </tr>
                    <?php endif;?>
                             </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-->
        <!-- Footer-->
   <?php include APPPATH.'views/includes/footer.php';?>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="<?php echo base_url('assets/js/scripts.js');?>"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    </body>
</html>
<script>
$(document).ready(function() {
	$('#butsave').on('click', function() {
		var postid = $('#postid').val();
        var name = $('#name').val();
        var email = $('#email').val();
        var comment = $('#comment').val();
		if(name!=""){
			$("#butsave").attr("disabled", "disabled");
			$.ajax({
				url: "<?php echo base_url("Welcome/comment");?>",
				type: "POST",
				data: {
					type: 1,
					postid: postid,
                    name: name,
                    email: email,
                    comment: comment
					
				},
				cache: false,
				success: function(dataResult){
              
					var dataResult = JSON.parse(dataResult);
               $('#contactForm').trigger('reset');
					if(dataResult.statusCode==200){
						$("#butsave").removeAttr("disabled");
						$("#success").show();
						$('#success').html('Data added successfully !'); 						
					}
					else if(dataResult.statusCode==201){
					   alert("Error occured !");
					}
					
				}
			});
		}
		else{
			alert('Please fill all the field !');
		}
	});
});
</script>