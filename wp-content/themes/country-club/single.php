<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="blog_detail bg-white rounded-0">
            <div class="container">

                <div class="row">
                    <div class="col-12">
                        <div class="news-block position-relative d-flex">
                            <div class="w-50">
                                <p class="mb-2"><?php echo get_the_date(); ?>
                                </p>
                                <h2><?php the_title(); ?></h2>
                            </div>
                            <div class="blog_detail-text w-50">
                                <?php if(have_posts()) : while(have_posts()) : the_post(); ?>
       <?php the_content(); ?>
       <?php endwhile;
       endif; ?>
                            </div>


                        </div>

                    </div>



                </div>
            </div>
        </section>

        <?php include 'booking_panel-page.php'; ?>

    </div>

    <?php get_footer(); ?>