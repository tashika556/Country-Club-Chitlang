<!-- Template Name: Blog Page -->
<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="news_page bg-white rounded-0">
            <div class="container">

                <div class="row">
                   <?php $paged = (get_query_var('paged')) ? get_query_var('paged') : 1 ;
                   $args = array(
                    'post_type'=>'post',
                    'orderby'=>'date',
                    'category_name'=>'blogs',
                    'posts_per_page'=>100,
                    'paged'=>$paged
                );
                $custom_query = new WP_Query($args);
                while($custom_query->have_posts()):
                    $custom_query->the_post();
                    $postid = get_the_ID();
                   ?> 
                  
                  
                    <div class="col-md-6 mb-lg-4 mb-4">
                        <div class="news-block position-relative">

                            <div class="image_news"><a href=""><img src="<?php echo the_post_thumbnail_url(); ?>" alt="" loading="lazy"></a>
                            </div>
                            <div class="date"><strong><?php echo get_the_date('d') ?></strong> <span><?php echo get_the_date('M') ?></span></div>
                            <div class="lower-content position-relative">


                                <h3><a href="<?php the_permalink(); ?>">
                                        <?php the_title(); ?></a>
                                </h3>
                                <div class="btn_default mt-2"><a href="<?php the_permalink(); ?>">Read More</a></div>
                            </div>


                        </div>

                    </div>
<?php endwhile;
wp_reset_postdata(); ?>



                </div>
            </div>
        </section>
<?php include ' booking_panel-page.php'; ?>

    </div>

    <?php get_footer(); ?>