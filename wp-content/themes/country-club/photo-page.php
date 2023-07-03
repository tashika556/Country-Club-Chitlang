<!-- Template Name: Photo Page -->
<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="bg-white">
            <div class="container">
                <div class="row">
                    <div class="col">
                    <?php if(have_posts()) : while(have_posts()) : the_post();
                    the_content();
endwhile;
endif; ?>
                    </div>
                </div>
            </div>
        </section>

     
        <?php include 'booking_panel-page.php'; ?>
    </div>

    <?php get_footer(); ?>