<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?php bloginfo('name')?><?php wp_title(); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" href="<?php echo get_template_directory_uri();?>/img/favicon.ico">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,400;1,500;1,600;1,700;1,800&family=Playfair+Display:wght@400;500;600;700;800;900&family=Poppins:wght@100;200;300;400;500&family=Roboto&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/bootstrap.minn.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/slick.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/slick-theme.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/magnific-popup.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/custom.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/responsive.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/animate.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/jquery-ui.css">
</head>

<body>
    <div class="menu-btn d-lg-none d-block">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
    <header class="header ">
        <div class="container-fluid p-0">
            <nav id='cssmenu' class="">
                <div class="row">
                    <div class="col-lg-12 text-left text-lg-center">
                        <div class="logo pl-2"><a href="<?php echo get_page_link(7); ?>"><img src="<?php echo get_template_directory_uri();?>/img/logo.png" alt="logo"></a></div>
                    </div>
                    <div class="book_now-btn d-lg-block d-none">
                        <a href="<?php echo get_page_link(115); ?>" class="akf-button akf-button--primary" type="button">

                            <span class="button-lefticon "> Book Now</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </header>
<?php wp_head(); ?>
    <nav class="horizontal-nav">
        <a href="#" id="nav-toggle-btn">
            <svg class="side-bar" width="40" height="40">
                <path d="M0,5 30,5" stroke="#fff" stroke-width="5"></path>
                <path d="M0,14 30,14" stroke="#fff" stroke-width="5"></path>
                <path d="M0,23 30,23" stroke="#fff" stroke-width="5"></path>
            </svg>
        </a>
    </nav>

    <div id="sidenav">
        <a href="javascript:void(0)" class="closebtn">&times;</a>
        <ul class="side-nav-items">
            <li class="side-item"><a href="<?php echo get_page_link(7); ?>">Home</a></li>
            <li class="side-item"><a href="<?php echo get_page_link(13); ?>">About</a></li>
            <li class="side-item dropdown">
                <a href="#">Accommodation</a>
                <ul class="dropdown-items">
                <?php
        $args = array(
    'post_type'=>'rooms',
    'orderby'=>array(
        'order'=>'DESC',
        'meta_key'=>'bar',
    ),
    'category_name'=>'accomodations',
    'posts_per_page'=>100,
    'paged'=>$paged
    );
    $custom_query= new WP_Query($args);
    while($custom_query->have_posts()):
        $custom_query->the_post();
        $postid = get_the_ID();
?>
                    <li class="dropdown-item"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                    <?php endwhile;
            wp_reset_postdata(); ?> 
                </ul>
            </li>
            <li class="side-item"><a href="<?php echo get_page_link(144); ?>">Menu</a></li>
            <li class="side-item"><a href="<?php echo get_page_link(85); ?>"> Review</a></li>

            <li class="side-item dropdown">
                <a href="#">Update</a>
                <ul class="dropdown-items">
                    <li class="dropdown-item"><a href="<?php echo get_page_link(128); ?>">
                            Blog</a></li>
                    <li class="dropdown-item"><a href="<?php echo get_page_link(119); ?>">Photo</a></li>
                   

                </ul>
            </li>
            <li class="side-item"><a href="<?php echo get_page_link(50); ?>">Contact</a></li>

        </ul>
    </div>