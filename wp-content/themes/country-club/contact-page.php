<!-- Template Name: Contact Page -->
<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="bg-white before_img ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <div class="sec_margin  position-relative">
                            <h5>Need help with your online booking, have a question or need more information? Just drop
                                us a line!</h5>
                        </div>
                        <h4>Reservations please call or email</h4>
                        <div class="contact-info mt-5">
                            <div class=""> <a href="tel: <?php the_field('phone') ?>">Call us: <?php the_field('phone') ?></a></div>
                            <div class="">
                                <a href="mailto:<?php the_field('email') ?>">Email: <?php the_field('email') ?>
                                </a>
                            </div>


                        </div>
                        <div class="map">
                        <?php if(have_posts()) : while(have_posts()) : the_post();
                            the_content();
endwhile;
endif; ?>
                    
                            <div class="d-flex justify-content-center">
                                <p><?php the_field('address') ?></p>
                            </div>
        
                            <div class="btn_default mt-3"><a
                                    href="<?php the_field('map_link'); ?>"
                                    target="_blank">
                                    GET DIRECTIONS</a></div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php include 'booking_panel-page.php'; ?>

    </div>

    <?php get_footer(); ?>