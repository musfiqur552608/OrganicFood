<?php 
    if(!isset($_SESSION['admin_email'])){
        echo "<script>window.open('login.php','_self')</script>";
    }else{

?>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header"> Dashboard </h1>

        <ol class="breadcrumb">
            <li class="active">
                <i class="fa fa-dashboard"></i> Dashboard
            </li>
        </ol>
    </div>
</div>

<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-tasks fa-5x"></i>
                    </div>

                    <div class="col-xs-9 text-right">
                        <div class="huge"><?php echo $count_products; ?></div>
                        <div> Products </div>
                    </div>

                </div>
            </div>

            <a href="index.php?view_products">
                <div class="panel-footer">
                    <span class="pull-left"> View Details </span>

                    <span class="pull-right">
                        <i class="fa fa-arrow-circle-right"></i>
                    </span>
                    <div class="clearfix"></div>
                </div>
            </a>

        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-users fa-5x"></i>
                    </div>

                    <div class="col-xs-9 text-right">
                        <div class="huge"><?php echo $count_customers; ?></div>
                        <div> Customers </div>
                    </div>

                </div>
            </div>

            <a href="index.php?view_customers">
                <div class="panel-footer">
                    <span class="pull-left"> View Details </span>

                    <span class="pull-right">
                        <i class="fa fa-arrow-circle-right"></i>
                    </span>
                    <div class="clearfix"></div>
                </div>
            </a>

        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-tags fa-5x"></i>
                    </div>

                    <div class="col-xs-9 text-right">
                        <div class="huge"><?php echo $count_p_categories; ?></div>
                        <div> Product Categories </div>
                    </div>

                </div>
            </div>

            <a href="index.php?view_p_cats">
                <div class="panel-footer">
                    <span class="pull-left"> View Details </span>

                    <span class="pull-right">
                        <i class="fa fa-arrow-circle-right"></i>
                    </span>
                    <div class="clearfix"></div>
                </div>
            </a>

        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-shopping-cart fa-5x"></i>
                    </div>

                    <div class="col-xs-9 text-right">
                        <div class="huge"><?php echo $count_pending_orders; ?></div>
                        <div> Orders </div>
                    </div>

                </div>
            </div>

            <a href="index.php?view_orders">
                <div class="panel-footer">
                    <span class="pull-left"> View Details </span>

                    <span class="pull-right">
                        <i class="fa fa-arrow-circle-right"></i>
                    </span>
                    <div class="clearfix"></div>
                </div>
            </a>

        </div>
    </div>
</div>

<div class="row"><!-- row no: 3 begin -->
    <div class="col-lg-8"><!-- col-lg-8 begin -->
        <div class="panel panel-primary"><!-- panel panel-primary begin -->
            <div class="panel-heading"><!-- panel-heading begin -->
                <h3 class="panel-title"><!-- panel-title begin -->
                    
                    <i class="fa fa-money fa-fw"></i> New Orders
                    
                </h3><!-- panel-title finish -->
            </div><!-- panel-heading finish -->
            
            <div class="panel-body"><!-- panel-body begin -->
                <div class="table-responsive"><!-- table-responsive begin -->
                    <table class="table table-hover table-striped table-bordered"><!-- table table-hover table-striped table-bordered begin -->
                        
                        <thead><!-- thead begin -->
                          
                            <tr><!-- th begin -->
                           
                                <th> Order no: </th>
                                <th> Customer Email: </th>
                                <th> Invoice No: </th>
                                <th> Product ID: </th>
                                <th> Product Qty: </th>
                                <th> Product Size: </th>
                                <th> Status: </th>
                            
                            </tr><!-- th finish -->
                            
                        </thead><!-- thead finish -->
                        
                        <tbody><!-- tbody begin -->

                        <?php 
                          
                          $i=0;
    
                          $get_order = "select * from pending_orders order by 1 DESC LIMIT 0,5";
    
                          $run_order = mysqli_query($con,$get_order);
    
                          while($row_order=mysqli_fetch_array($run_order)){
                              
                              $order_id = $row_order['order_id'];
                              
                              $c_id = $row_order['customer_id'];
                              
                              $invoice_no = $row_order['invoice_no'];
                              
                              $product_id = $row_order['product_id'];
                              
                              $qty = $row_order['qty'];
                              
                              $size = $row_order['size'];
                              
                              $order_status = $row_order['order_status'];
                              
                              $i++;
                      
                      ?>
                           
                            <tr><!-- tr begin -->

                                <td> <?php echo $order_status; ?> </td>
                                <td>
                                    <?php
                                        $get_customer = "select * from customers where customer_id = '$c_id'";
                                        $run_customer = mysqli_query($con,$get_customer);
                                        $row_customer = mysqli_fetch_array($run_customer);

                                        $customer_email = $row_customer['customer_email'];

                                        echo $customer_email;
                                    ?>
                                </td>
                                <td> <?php echo $invoice_no; ?> </td>
                                <td> <?php echo $product_id; ?> </td>
                                <td> <?php echo $qty; ?> </td>
                                <td> <?php echo $size; ?> </td>
                                <td>
                                    
                                    <?php 
                                    
                                        if($order_status=='pending'){
                                            
                                            echo $order_status='pending';
                                            
                                        }else{
                                            
                                            echo $order_status='Complete';
                                            
                                        }
                                    
                                    ?>
                                    
                                </td>
                                
                            </tr><!-- tr finish -->

                            <?php } ?>
                            
                        </tbody><!-- tbody finish -->
                        
                    </table><!-- table table-hover table-striped table-bordered finish -->
                </div><!-- table-responsive finish -->
                
                <div class="text-right"><!-- text-right begin -->
                    
                    <a href="index.php?view_orders"><!-- a href begin -->
                        
                        View All Orders <i class="fa fa-arrow-circle-right"></i>
                        
                    </a><!-- a href finish -->
                    
                </div><!-- text-right finish -->
                
            </div><!-- panel-body finish -->
            
        </div><!-- panel panel-primary finish -->
    </div><!-- col-lg-8 finish -->
    
    <div class="col-md-4"><!-- col-md-4 begin -->
        <div class="panel"><!-- panel begin -->
            <div class="panel-body"><!-- panel-body begin -->
                <div class="mb-md thumb-info"><!-- mb-md thumb-info begin -->

                    <img src="admin_images/<?php echo $admin_image; ?>" alt="<?php echo $admin_image; ?>" class="rounded img-responsive">
                    
                    <div class="thumb-info-title"><!-- thumb-info-title begin -->
                       
                        <span class="thumb-info-inner"> <?php echo $admin_name; ?> </span>
                        <span class="thumb-info-type"> <?php echo $admin_job; ?> </span>
                        
                    </div><!-- thumb-info-title finish -->

                </div><!-- mb-md thumb-info finish -->
                
                <div class="mb-md"><!-- mb-md begin -->
                    <div class="widget-content-expanded"><!-- widget-content-expanded begin -->
                        <i class="fa fa-user"></i> <span> Email: </span> <?php echo $admin_email; ?> <br/>
                        <i class="fa fa-flag"></i> <span> Country: </span> <?php echo $admin_country; ?> <br/>
                        <i class="fa fa-envelope"></i> <span> Contact: </span> <?php echo $admin_contact; ?> <br/>
                    </div><!-- widget-content-expanded finish -->
                    
                    <hr class="dotted short">
                    
                    <h5 class="text-muted"> About Me </h5>
                    
                    <p><!-- p begin -->
                        
                        <?php echo $admin_about; ?>
                        
                    </p><!-- p finish -->
                    
                </div><!-- mb-md finish -->
                
            </div><!-- panel-body finish -->
        </div><!-- panel finish -->
    </div><!-- col-md-4 finish -->
    
</div><!-- row no: 3 finish -->

<?php } ?>