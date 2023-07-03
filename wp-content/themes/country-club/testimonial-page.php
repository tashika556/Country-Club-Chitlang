<!-- Template Name: Reviews Page -->
<?php get_header(); ?>


<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="news bg-white  rounded-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title  position-relative">
                            <div class="section_sub">
                                <p><?php the_title(); ?>
                                </p>
                                <div class="mb-lg-5 mb-4 mt-lg-3 mt-2">
                                    <h2>What Our Customer Says
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                <?php
        $args = array(
    'post_type'=>'reviews',
    'orderby'=>array(
        'order'=>'DESC',
        'meta_key'=>'bar',
    ),
    'category_name'=>'reviews',
    'posts_per_page'=>100,
    'paged'=>$paged
    );
    $custom_query= new WP_Query($args);
    while($custom_query->have_posts()):
        $custom_query->the_post();
        $postid = get_the_ID();
?>
                    <div class="col-lg-6 mb-4">
                        <div class="testimonial_div">
                            <div class="tes_titile-div">
                                <h3 class="pt-0 mt-0"><span class="quote">“</span><?php the_field('title') ?></h3>
                               <?php the_content(); ?>
                            </div>


                            <div class="border_bottom"></div>
                            <div class="tes_button d-flex align-items-center">
                                <div class="tes_button-logo">
                                    <img src="<?php echo the_post_thumbnail_url(); ?>" class="img-fluid" alt="">
                                </div>
                                <div class="tes_name ml-3">
                                    <h4><?php the_title(); ?></h4>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <?php endwhile;
            wp_reset_postdata(); ?> 
                  
                </div>

            </div>
        </section>

        <?php include 'booking_panel-page.php'; ?>

    </div>

    <?php get_footer(); ?>