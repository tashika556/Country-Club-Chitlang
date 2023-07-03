<a class="" id="button">
    <img src="<?php echo get_template_directory_uri();?>/img/logo-2.png" alt="">
</a>
<section class="footer position-relative">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center mx-auto">
                <div class="logo_footer d-lg-block d-none">
                    <a href="<?php echo get_page_link(7); ?>"> <img src="<?php echo get_template_directory_uri();?>/img/logo.png" alt="" class="img-fluid"></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 mb-md-0 mb-3">
                <div class="footer_title text-white">
                    <div class="mb-lg-3 mb-2">
                        <h4> Address</h4>
                    </div>

                    <p><?php the_field('address',50) ?></p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-md-0 mb-3">
                <div class="footer_title text-white text-lg-center text-left">
                    <div class="mb-lg-3 mb-2">
                        <h4>Contact</h4>
                    </div>
                    <ul>
                        <li><a href="tel: <?php the_field('phone',50) ?>"><?php the_field('phone',50) ?></a></li>
                        <li><a href="mailto:<?php the_field('email',50) ?> ">

                        <?php the_field('email',50) ?>  </a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer_title text-white text-lg-right text-md-center text-left">
                    <div class="mb-lg-3 mb-2">
                        <h4>Social Links</h4>
                    </div>

                </div>
                <div class="social_icon pt-2">
                    <ul class="d-flex justify-content-lg-end justify-content-md-center justify-content-left">
                        <li><a href="<?php the_field('facebook',50) ?>" class="facebook_bg" target="_blank"><i class="fa fa-facebook"
                                    aria-hidden="true"></i></a>
                        </li>
                        <li><a href="<?php the_field('twitter',50) ?>" class="twitter_bg" target="_blank"><i class="fa fa-twitter"
                                    aria-hidden="true"></i></a></li>
                        <li><a href="<?php the_field('youtube',50) ?>" class="youtube_bg" target="_blank"><i class="fa fa-youtube"
                                    aria-hidden="true"></i></a></li>
                        <li><a href="<?php the_field('instagram',50) ?>" class="instagram_bg" target="_blank"><i class="fa fa-instagram"
                                    aria-hidden="true"></i></a>
                        </li>


                    </ul>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- <img src="img/banner/footer.PNG" class="img-fluid w-100" alt=""> -->
<section id="footer_button" class="d-flex align-items-center">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-5 col-12">
                <div class="footer_item text-md-left text-center">
                    <p> Copyright © 2023 Country Club Chitlang.</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="accepts-img text-center">
                    <img src="<?php echo get_template_directory_uri();?>/img/accepts.png" class="img-fluid" alt="">
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="company_name text-md-right text-center">
                    <p>Website by <a href="" target="_blank">ArchieSoft
                            Technology
                        </a></p>
                </div>
            </div>
        </div>
    </div>
</section>
</div><?php wp_footer(); ?>
<!-- mobile menu start  -->
<div class="side-bar" id="sidebar">
    <header>
        <div class="close-btn">
            <i class="fa fa-times"></i>
        </div>
    </header>
    <div class="menu_mobile pt-3">

        <div class="item"><a href="<?php echo get_page_link(7); ?>">Home</a></div>
        <div class="item"><a href="<?php echo get_page_link(13); ?>"> About</a></div>
        <div class="item">
            <a class="sub-btn">
                Accommodation

                <i class="fa fa-angle-right dropdown"></i></a>
            <div class="sub-menu">
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
                <a href="<?php the_permalink(); ?>" class="sub-item"><?php the_title(); ?></a>
                <?php endwhile;
            wp_reset_postdata(); ?> 

            </div>
        </div>
        <div class="item"><a href="<?php echo get_page_link(85); ?>"> Review</a></div>
        <div class="item"><a href="<?php echo get_page_link(144); ?>"> Menu</a></div>
        <div class="item">
            <a class="sub-btn">
                Update

                <i class="fa fa-angle-right dropdown"></i></a>
            <div class="sub-menu">
                <a href="<?php echo get_page_link(128); ?>" class="sub-item">
                    Blog </a>
                <a href="<?php echo get_page_link(119); ?>" class="sub-item">Photo </a>

            </div>
        </div>
        <div class="item"><a href="<?php echo get_page_link(50); ?>"> Contact</a></div>
    </div>
</div>


<script src="<?php echo get_template_directory_uri();?>/js/jquery-1.12.4.min.js"></script>
<script src="<?php echo get_template_directory_uri();?>/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/popper.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/bootstrap.min.js"></script>
<script src="<?php echo get_template_directory_uri();?>/js/slick.js"></script>
<script src="<?php echo get_template_directory_uri();?>/js/slick-animation.min.js"></script>
<script src="<?php echo get_template_directory_uri();?>/js/wow.js"></script>
<script src="<?php echo get_template_directory_uri();?>/js/font-awesom.js "></script>
<script src="<?php echo get_template_directory_uri();?>/js/typed.min.js"
    integrity="sha512-BdHyGtczsUoFcEma+MfXc71KJLv/cd+sUsUaYYf2mXpfG/PtBjNXsPo78+rxWjscxUYN2Qr2+DbeGGiJx81ifg=="
    crossorigin="anonymous"></script>
<script src="<?php echo get_template_directory_uri();?>/js/main.js"></script>
</body>

</html>