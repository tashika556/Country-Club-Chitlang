<section class="logo_section bg-white border_t position-relative">
            <div class="container">
                <div class="book_log-slider">

                
        <?php
        $args = array(
    'post_type'=>'partners',
    'orderby'=>array(
        'order'=>'DESC',
        'meta_key'=>'bar',
    ),
    'category_name'=>'partners',
    'posts_per_page'=>100,
    'paged'=>$paged
    );
    $custom_query= new WP_Query($args);
    while($custom_query->have_posts()):
        $custom_query->the_post();
        $postid = get_the_ID();
?>
                    <div class="book_item">
                        <div class="booking_item d-flex justify-content-center align-items-center">
                            <a href="" class="logo_item d-flex align-items-center h-100 justify-content-center">
                                <img src="<?php echo the_post_thumbnail_url(); ?>">
                            </a>
                        </div>
                    </div>
                 
  
                    <?php endwhile;
            wp_reset_postdata(); ?> 

                </div>
            </div>
        </section>