<!-- Template Name: About Page -->
<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="news bg-white  rounded-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section_title position-relative">
                            <div class="section_sub section_margin">
                                <p>WELCOME TO Country Club Chitlang
                                </p>
                               
                            </div>

                            <div class="readmore__content">
                         <?php if(have_posts()) : while(have_posts()) : the_post();
                         the_content();
endwhile;
endif; ?>

                            </div>
                            <div class="mb-lg-0 mb-4">
                                <a class="readmore__toggle theme_btn_sub mt-4" role="switch" aria-checked="true">
                                    Show more
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about_page-img">
                            <?php $image = get_field('image') ?>
                            <img src="<?php echo $image['url']; ?>"
                                class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="bg-white rounded-0 pt-0 before_img position-relative">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 m-auto">
                        <div class="section_title text-center sec_margin">
                            <div class="section_sub">
                                <p>OUR FEATURES
                                </p>

                                <h2>Why Choose Us
                                </h2>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="why_choose-wrapp pr-lg-3 pr-0">
                            <div class="why_choose-img">
                            <?php $image = get_field('image_one') ?>
                                <img src="<?php echo $image['url']; ?>" class="img-fluid" alt="">
                            </div>
                            <div class="why_choose_two">
                            <?php $image = get_field('image_two') ?>
                                <img src="<?php echo $image['url']; ?>" class="img-fluid" alt="">
                                <div class="text-three text-center p-3"><span><?php the_field('visitors') ?></span> Visitors <br> Come Annually
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="col-lg-6">
                        <div class="why_choose-text pl-3">
                            <div class="margin_buttom">
                                <h5><?php the_field('our_features_summary') ?></h5>
                            </div>
                            <div class="why_choose-list">
                            <?php the_field('why_choose_us'); ?>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <?php include 'booking_panel-page.php'; ?>

    </div>

    <?php get_footer(); ?>