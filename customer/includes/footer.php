<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <h4>Pages</h4>
                <ul>
                    <li><a href="cart.php">Shopping Cart</a></li>
                    <li><a href="contact.php">Shop</a></li>
                    <li><a href="shop.php">Contact</a></li>
                    <li><a href="customer/my_account.php">My Account</a></li>
                </ul>
                <h4>User Section</h4>
                <ul>
                    <li><a href="checkout.php">Login</a></li>
                    <li><a href="customer_register.php">Register</a></li>
                </ul>
                <hr class="hidden-md hidden-lg hidden-sm">
            </div>
            

            <div class="com-sm-6 col-md-3">
                <h4>Top Product Categories</h4>
                <ul>
                    <?php 
                        $get_p_cat = "select * from product_categories";

                        $run_p_cat = mysqli_query($con,$get_p_cat);

                        while($row_p_cats=mysqli_fetch_array($run_p_cat)){
                            $p_cat_id = $row_p_cats['p_cat_id'];
                            $p_cat_title = $row_p_cats['p_cat_title'];

                            echo "
                            
                                <li>
                                    <a href='shop.php?p_cat=$p_cat_id'>
                                        $p_cat_title
                                    </a>

                                </li>
                            
                            ";
                        }
                    ?>
                </ul>
                <hr class="hidden-md hidden-lg hidden-sm">
            </div>

            <div class="col-sm-6 col-md-3">
                <h4>
                    Find Us
                </h4>
                <p>
                    <Strong>Organic Food inc.</Strong>
                    <br>Dhaka
                    <br>Bangladesh
                    <br>01638352180
                    <br>musfiq552608@gmail.com
                </p>

                <a href="contact.php">Check Our Contact Page</a>
                <hr class="hidden-md hidden-lg">
            </div>
            <div class="col-sm-6 col-md-3">
                <h4>Get The News</h4>
                <p class="text-muted">
                    Don't miss our latest update products.

                </p>
                <form action="get" method="post">
                    <div class="input-group">

                        <input type="text" class="form-control" name="email">
                        <span class="input-group-btn">
                            <input type="submit" value="subscribe" class="btn btn-default">
                        </span>
                            
                    </div>
                </form>

                <hr>
                <h4>Keep In Touch</h4>
                <p class="social">
                    <a href="" class="fa fa-facebook"></a>
                    <a href="" class="fa fa-twitter"></a>
                    <a href="" class="fa fa-instagram"></a>
                    <a href="" class="fa fa-google-plus"></a>
                    <a href="" class="fa fa-envelope"></a></p>
            </div>
        </div>
    </div>
</div>

<div id="copyright">
    <div class="container">
        <div class="col-md-6">
            <p class="pull-left">
                &copy; 2021 Triangle Bee Organic Food All Rights Reserve
            </p>
        </div>
        <div class="col-md-6">
            <p class="pull-right">
                Theme by: <a href="#">Triangle Bee</a>
            </p>
        </div>
    </div>
</div>