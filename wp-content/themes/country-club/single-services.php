<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo get_the_post_thumbnail_url(93); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php echo the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class=" section_block_wrapp">
        <section class="news bg-white  rounded-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section_title position-relative">
                            <div class="section_sub section_margin">
                                <p>Services
                                </p>
                                <h2><?php echo the_title(); ?>
                                </h2>
                            </div>
                            <div class="text-wraps">
                                <?php if(have_posts()) : while(have_posts()) : the_post(); ?>
                      <?php the_content(); ?>
                      <?php endwhile;
                      endif; ?>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="services-img">
                            <img src="<?php echo the_post_thumbnail_url(); ?>" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php include 'booking_panel-page.php'; ?>

    </div>



    <?php get_footer(); ?>