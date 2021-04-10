<?php 
  
    if(!isset($_SESSION['admin_email'])){
        echo "<script>window.open('login.php','_self')</script>";
    }else{

?>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-header">
        <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-exl-collapse">
            <span class="sr-only">Toggle Navigation</span>

            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>


        </button>
        
        <a href="index.php?dashboard" class="navbar-brand">Admin Area</a>


    </div>

    <ul class="nav navbar-right top-nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-user"></i> <?php echo $admin_name; ?> <b class="caret"></b>
            </a>

            <ul class="dropdown-menu">
                <li>
                
                    <a href="index.php?user_profile=<?php echo $admin_id; ?>">
                        <i class="fa fa-fw fa-user"></i> Profile
                    </a>
                
                </li>
                <li>
                
                    <a href="index.php?view_products">
                        <i class="fa fa-fw fa-envelope"></i> Products
                        <span class="badge"><?php echo $count_products; ?></span>
                    </a>
                
                </li>
                <li>
                
                    <a href="index.php?view_customers">
                        <i class="fa fa-fw fa-users"></i> Customers
                        <span class="badge"><?php echo $count_customers; ?></span>
                    </a>
                
                </li>
                <li>
                
                    <a href="index.php?view_cats">
                        <i class="fa fa-fw fa-user"></i> Product Categories
                        <span class="badge"><?php echo $count_p_categories; ?></span>
                    </a>
                
                </li>
                <li class="divider"></li>
                <li>
                
                    <a href="logout.php">
                        <i class="fa fa-fw fa-power-off"></i> Logout
                    </a>
                
                </li>

            </ul>

        </li>
    </ul>

    <div class="collapse navbar-collapse navbar-exl-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="index.php?dashboard">
                    <i class="fa fa-fw fa-dashboard"></i> Dashboard
                </a>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#products">
                    <i class="fa fa-fw fa-tag"></i> Products
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="products">
                    <li>
                        <a href="index.php?insert_products"> Insert Products </a>
                    </li>
                    <li>
                        <a href="index.php?view_products"> View Products </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#manufacturer">
                    <i class="fa fa-fw fa-star"></i> Manufacturer
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="manufacturer">
                    <li>
                        <a href="index.php?insert_manufacturer"> Insert Manufacturer </a>
                    </li>
                    <li>
                        <a href="index.php?view_manufacturers"> View Manufacturers </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#p_cat">
                    <i class="fa fa-fw fa-edit"></i> Products Categories
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="p_cat">
                    <li>
                        <a href="index.php?insert_p_cat"> Insert Products Category</a>
                    </li>
                    <li>
                        <a href="index.php?view_p_cats"> View Products Categories</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#cat">
                    <i class="fa fa-fw fa-book"></i> Categories
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="cat">
                    <li>
                        <a href="index.php?insert_cat"> Insert Category</a>
                    </li>
                    <li>
                        <a href="index.php?view_cats"> View Categories</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#slides">
                    <i class="fa fa-fw fa-gear"></i> Slides
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="slides">
                    <li>
                        <a href="index.php?insert_slide"> Insert Slide</a>
                    </li>
                    <li>
                        <a href="index.php?view_slides"> View Slides</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#boxes">
                    <i class="fa fa-fw fa-dropbox"></i> Boxes
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="boxes">
                    <li>
                        <a href="index.php?insert_box"> Insert Box</a>
                    </li>
                    <li>
                        <a href="index.php?view_boxes"> View Boxes</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#coupon">
                    <i class="fa fa-fw fa-book"></i> Coupons
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="coupon">
                    <li>
                        <a href="index.php?insert_coupon"> Insert Coupon </a>
                    </li>
                    <li>
                        <a href="index.php?view_coupons"> View Coupons </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#terms">
                    <i class="fa fa-fw fa-table"></i> Terms
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="terms">
                    <li>
                        <a href="index.php?insert_term"> Insert Term</a>
                    </li>
                    <li>
                        <a href="index.php?view_terms"> View Terms</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="index.php?view_customers">
                    <i class="fa fa-fw fa-users"></i> View Customers
                </a>
            </li>
            <li>
                <a href="index.php?view_orders">
                    <i class="fa fa-fw fa-book"></i> View Orders
                </a>
            </li>
            <li>
                <a href="index.php?view_payments">
                    <i class="fa fa-fw fa-money"></i> View Payments
                </a>
            </li>
            <li>
                <a href="index.php?edit_css">
                    <i class="fa fa-fw fa-pencil"></i> CSS Editor
                </a>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#users">
                    <i class="fa fa-fw fa-users"></i> Users
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul class="collapse" id="users">
                    <li>
                        <a href="index.php?insert_user"> Insert User </a>
                    </li>
                    <li>
                        <a href="index.php?view_users"> View Users </a>
                    </li>
                    <li>
                        <a href="index.php?user_profile=<?php echo $admin_id; ?>"> Edit User Profile </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="logout.php">
                    <i class="fa fa-fw fa-power-off"></i> Logout
                </a>
            </li>
        </ul>
    </div>

</nav>

<?php } ?>