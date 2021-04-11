<?php 
 include("includes/header.php");

?>


    <div id="hot">
        <div class="box">
            <div class="container">
                <div class="col-md-12">
                    <h2>
                        Your Searched Products
                    </h2>
                </div>
            </div>
        </div>
    </div>

    <div id="content" class="container">
        <div class="row">
            <?php 
            if(isset($_GET['search'])){
               
                $p_title = $_GET['user_query'];

                global $db;
    
                $get_products = "select * from products where product_title LIKE '%".$p_title."%'";
                
                $run_products = mysqli_query($db,$get_products);
                
                while($row_products=mysqli_fetch_array($run_products)){
                    
                    $pro_id = $row_products['product_id'];
                    
                    $pro_title = $row_products['product_title'];
                    
                    $pro_url = $row_products['product_url'];
                    
                    $pro_price = $row_products['product_price'];
            
                    $pro_sale_price = $row_products['product_sale'];
                    
                    $pro_img1 = $row_products['product_img1'];
                    
                    $pro_label = $row_products['product_label'];
                    
                    $manufacturer_id = $row_products['manufacturer_id'];
            
                    $get_manufacturer = "select * from manufacturers where manufacturer_id='$manufacturer_id'";
            
                    $run_manufacturer = mysqli_query($db,$get_manufacturer);
            
                    $row_manufacturer = mysqli_fetch_array($run_manufacturer);
            
                    $manufacturer_title = $row_manufacturer['manufacturer_title'];
            
                    if($pro_label == "sale"){
            
                        $product_price = " <del> ৳ $pro_price </del> ";
            
                        $product_sale_price = "/ ৳ $pro_sale_price ";
            
                    }else{
            
                        $product_price = "  ৳ $pro_price  ";
            
                        $product_sale_price = "";
            
                    }
            
                    if($pro_label == ""){
            
                    }else{
            
                        $product_label = "
                        
                            <a href='#' class='label $pro_label'>
                            
                                <div class='theLabel'> $pro_label </div>
                                <div class='labelBackground'>  </div>
                            
                            </a>
                        
                        ";
            
                    }
                    
                    echo "
                    
                    <div class='col-md-4 col-sm-6 single'>
                    
                        <div class='product'>
                        
                            <a href='$pro_url'>
                            
                                <img class='img-responsive' src='admin_area/product_images/$pro_img1'>
                            
                            </a>
                            
                            <div class='text'>
            
                            <center>
                            
                                <p class='btn btn-primary'> $manufacturer_title </p>
                            
                            </center>
                            
                                <h3>
                        
                                    <a href='$pro_url'>
            
                                        $pro_title
            
                                    </a>
                                
                                </h3>
                                
                                <p class='price'>
                                
                                $product_price &nbsp;$product_sale_price
                                
                                </p>
                                
                                <p class='button'>
                                
                                    <a class='btn btn-default' href='$pro_url'>
            
                                        View Details
            
                                    </a>
                                
                                    <a class='btn btn-primary' href='$pro_url'>
            
                                        <i class='fa fa-shopping-cart'></i> Add to Cart
            
                                    </a>
                                
                                </p>
                            
                            </div>
            
                            $product_label
                        
                        </div>
                    
                    </div>
                    
                    ";
                    
                }
            }
            ?>
        </div>
    </div>

    <?php

        include("includes/footer.php");

    ?>

   
    
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    
</body>
</html>