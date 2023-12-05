 <!DOCTYPE html>
 <html lang="en-CA">

 <head>
     <title>MVC Framework PHP Tutorial</title>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
     <meta http-equiv="cleartype" content="on" />
     <link rel="icon" href="template/Default/img/favicon.ico" type="image/x-icon" />
     <meta name="Description" content="" />
     <meta name="Keywords" content="" />
     <!--rieng-->
     <meta property="og:url" content="<?php

                                        $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
                                        echo $actual_link;

                                        ?>" />
     <meta property="og:type" content="article" />
     <meta property="og:title" content="<?php echo $this->title ?>" />
     <meta property="og:description" content="<?php echo $this->desc ?>" />
     <meta property="og:image" content="<?php echo $this->image ?>" />
     <!--rieng-->
     <!--tkw-->

     <meta vary="User-Agent" />
     <meta name="geo.region" content="VN-SG" />
     <meta name="geo.placename" content="Ho Chi Minh City" />
     <meta name="geo.position" content="10.823099;106.629664" />
     <meta name="ICBM" content="10.823099, 106.629664" />
     <link rel="icon" type="image/png" href="template/Default/img/favicon.png">
     <!--tkw-->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;1,300&family=Poppins:wght@400;600&family=Roboto+Mono:wght@300;400;500;600;700&family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,700&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" />
     <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL ?>/public/css/owl.theme.default.min.css">
     <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL ?>/public/css/product.css">
     <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL ?>/public/css/style.css">

 </head>

 <body>
     <header>
         <div class="header_top_menu">
             <div class="header_top_menu_all">
                 <div class="header_top">
                     <div class="bg_in row d-flex align-items-center">
                         <div class="logo col-md-4">
                             <a href="<?php echo BASE_URL ?>"><img src="<?php echo BASE_URL ?>/public/images/logohere.png" width="250" height="100" alt="logohere.jpeg" /></a>
                         </div>
                         <nav class="menu_top col-md-4">
                             <form autocomplete="off" class="search_form" method="get" action="">
                                 <input class="searchTerm" name="search" placeholder="Nhập từ cần tìm..." />
                                 <button class="searchButton" type="submit">
                                     <i class="fa fa-search" aria-hidden="true"></i>
                                 </button>
                             </form>
                         </nav>
                         <div class="cart_wrapper col-md-4 d-flex justify-content-end">
                             <div class="row">
                                 <div class="col-md-6 text-center fs-4 ">
                                     <i class="fa fa-user-circle-o" aria-hidden="true"></i><br>
                                     <?php
                                        if (Session::get('customer') == true) {
                                        ?>
                                         <a class="text-login" href='<?php echo BASE_URL ?>/khachhang/dangxuat'>Đăng
                                             xuất</a>
                                     <?php
                                        } else {
                                        ?>
                                         <a class="text-login" href='<?php echo BASE_URL ?>/khachhang/dangnhap'>Đăng
                                             nhập</a>
                                     <?php
                                        }
                                        ?>
                                 </div>
                                 <div class="d-block col-md-6 text-center fs-4 ">
                                     <a href='<?php echo BASE_URL ?>/giohang'>
                                         <i class="fa fa-shopping-cart" aria-hidden="true"></i><br>
                                         <span class="text-login">Giỏ hàng</span>
                                     </a>
                                 </div>
                             </div>
                             <div class="clear"></div>
                         </div>
                         <div class="clear"></div>
                     </div>
                 </div>
             </div>
             <div class="btn_menu_search">
                 <div class="bg_in">
                     <div class="table_row_search">
                         <div class="menu_top_cate">
                             <div class="">
                                 <div class="menu" id="menu_cate">
                                     <div class="menu_left">
                                         <i class="fa fa-bars" aria-hidden="true"></i> Danh mục sản phẩm
                                     </div>
                                     <div class="cate_pro">
                                         <div id='cssmenu_flyout' class="display_destop_menu">
                                             <ul>
                                                 <?php
                                                    foreach ($category as $key => $cate) {
                                                    ?>
                                                     <li class='active has-sub'>

                                                         <a href='<?php echo BASE_URL ?>/sanpham/danhmuc/<?php echo $cate['id_category_product'] ?>'><span><?php echo $cate['title_category_product'] ?></span></a>

                                                     </li>
                                                 <?php
                                                    }
                                                    ?>

                                             </ul>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="search_top">
                             <div id='cssmenu'>
                                 <ul>
                                     <li class='active'><a href='<?php echo BASE_URL ?>/index'>Trang chủ</a></li>

                                     <li class=''>

                                         <a href='<?php echo BASE_URL ?>/sanpham/tatca'>Sản phẩm</a>

                                         <ul>
                                             <?php
                                                foreach ($category as $key => $cate) {
                                                ?>
                                                 <li>

                                                     <a href='<?php echo BASE_URL ?>/sanpham/danhmuc/<?php echo $cate['id_category_product'] ?>'><span><?php echo $cate['title_category_product'] ?></span></a>


                                                 </li>
                                             <?php
                                                }
                                                ?>



                                         </ul>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                         <div class="clear"></div>
                     </div>
                 </div>
                 <div class="clear"></div>
             </div>
         </div>
     </header>
     <div class="clear"></div>