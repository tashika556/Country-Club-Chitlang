<!-- Template Name: Home Page -->
<?php get_header(); ?>

<section class="slider_homepage p-0">
    <div class="slider stick-dots">
<?php $images = get_field('images');
if($images):
    foreach($images as $image): ?>

        <div class="slide">
            <div class="slide__img">
                <img src="" alt="" data-lazy="<?php echo $image['url']; ?>" class="full-image animated"
                    data-animation-in="zoomInImage" />
            </div>
       


        </div>
        <?php endforeach;
        endif; ?>
    </div>
     
</section>
<section class="services_top">
    <div class="container-fluid p-lg-0 p-3">
        <div class="row">
            <div class="col-lg-5 col-md-7">
                <div class="services_content-wrapp">
                    <div class="section_title_sub dark_section">
                        <div class="mb-lg-4 mb-2">
                            <h2>
                                Services</h2>
                        </div>
                        <?php
$my_id = 93;
$post_id_93 = get_post($my_id);
$content = $post_id_93->post_content;
$content = apply_filters('the_content', $content);
$content = str_replace(']]>', ']]>', $content);
echo $content;
?>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="services_top-slider">

                <?php
                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1 ;
                $args = array(
                    'post_type'=>'services',
                    'orderby'=>array(
                        'meta_key'=>'bar',
                        'order'=>'DESC',
                    ),
                    'category_name'=>'services',
                    'posts_per_page'=>100,
                    'paged'=>$paged
                    );
                    $custom_query= new WP_Query($args);
                    while($custom_query->have_posts()):
                        $custom_query->the_post();
                        $postid = get_the_ID();
                ?>
                    <a href="<?php the_permalink(); ?>">
                        <div class="services_item">
                            <div class="inner-box">
                                <div class="image"><img decoding="async" src="<?php echo the_post_thumbnail_url(); ?>" alt="Awesome Image">
                                </div>
                                <h5><?php the_title(); ?></h5>
                            </div>
                        </div>
                    </a>
                 
<?php
endwhile;
wp_reset_postdata();
 ?>

                </div>
            </div>
        </div>
    </div>

</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="about-inex bg-white">
            <div class="container">
                <div class="row">
                <?php
                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                    $args = array(
                        'post_type'      => 'rooms',
                        'orderby'=>array(
                            'meta_key'=>'bar',
                            'order'=>'DESC',
                        ),
                        'posts_per_page' => 2,
                        'category_name'=>'accomodations' ,
                        'paged'=>$paged
                        // Change the number of rooms to display here
                    );
                    $custom_query = new WP_Query($args);

                    if ($custom_query->have_posts()) :
                        $room_counter = 1;

                        while ($custom_query->have_posts()) :
                            $custom_query->the_post();

                            if ($room_counter == 1) :
                    ?>
                    <div class="col-lg-7 col-md-6 mb-md-0 mb-3">
                        <div class="about_wrapp pr-lg-2 pr-0">
                            <div class="section_mb section_sub_white ">
                                <p class="mb-lg-3 mb-2">The Stay
                                </p>
                                <h2>Room / Suites</h2>
                            </div>
                            <a class="room_block" href="<?php the_permalink(); ?>">
                                <div class="room_wrapp position-relative ">
                                    <div class="img_room position-relative">
                                        <img src="<?php echo the_post_thumbnail_url(); ?>" alt="">
                                    </div>
                                    <div class="room_content">
                                        <h4><?php the_title(); ?></h4>
                                        <div class="price mt-lg-2 mt-0">
                                            <h5>Price from <strong><?php the_field('price'); ?></strong></h5>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div> <?php
                            elseif ($room_counter == 2) :
                    ?>
                    <div class="col-lg-5 col-md-6">
                        <div class="about_wrapp pl-lg-2 pl-0">

                            <a class="room_block" href="<?php the_permalink(); ?>">
                                <div class="room_wrapp position-relative ">
                                    <div class="img_room position-relative">
                                        <img src="<?php echo the_post_thumbnail_url(); ?>" alt="">
                                    </div>
                                    <div class="room_content">
                                        <h4><?php the_title(); ?></h4>
                                        <div class="price mt-lg-2 mt-0">
                                            <h5>Price from <strong><?php the_field('price'); ?></strong></h5>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="text-white room_div">
                               <?php the_field('summary'); ?>

                            </div>
                        </div>
                    </div>   <?php
                            endif;
                            
                            $room_counter++;
                        endwhile;
                        wp_reset_postdata();
                    else :
                        echo 'No rooms found.';
                    endif;
                    ?>
                </div>
            </div>
        </section>
        <section class="services bg-white pt-0 before_img position-relative">
            <div class="container">
                <div class="row_wrapp mt-0">
                    <div class="row">
                        <div class="col-lg-10 m-auto">
                            <div class="section_title  text-center position-relative">
                                <div class="section_sub">
                                    <P>AMENITIES
                                    </P>
                                    <div class="mb-lg-5 mb-3 mt-lg-3 mt-2">
                                        <h2>Make Your Stay Memorable
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <?php $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                        $args = array(
                            'post_type'=>'amenities',
                            'orderby'=>array(
                                'meta_key'=>'bar',
                                'order'=>'DESC',
                            ),
                            'category_name'=> 'amenities',
                            'posts_per_page'=>100,
                            'paged'=>$paged
                            ); 
                            $custom_query= new WP_Query($args);
                            while($custom_query->have_posts()):
                                $custom_query->the_post();
                                $postid= get_the_ID();
                            ?>

                        <div class="col-lg-4 col-md-6">
                            <div class="services_item d-flex mb-lg-5 mb-3">
                                <div class="services_img">
                                    <img src="<?php echo the_post_thumbnail_url(); ?>" class="responsive">
                                </div>
                                <div class="service_text ml-4">
                                    <div class="mb-2">
                                        <h4><?php the_title(); ?></h4>
                                    </div>
                                    <?php
      
                                    the_content();
                        
                                    ?>
                                </div>
                            </div>
                        </div>
                    

                        <?php endwhile;
                        wp_reset_postdata(); ?>
                    </div>
                </div>
            </div>
        </section>

    </div>
    </section>
</div>
<div class="section_wrapp">
    <div class="">
        <section class="about-inex">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-6 mb-md-0 mb-3">
                        <div class="about_wrapp pr-lg-2 pr-0">
                            <div class="section_sub_white dark_section">
                                <p class="mb-3">ABOUT US
                                </p>

                                <h2>The Story Behind
                                    Our Resort
                                </h2>


                            </div>



                            <div class="img_one about-img">
                                <?php $image = get_field('image_one') ?>
                                <img src="<?php echo $image['url']; ?>" class="img-fluid" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="about_wrapp pl-lg-2 pl-0">

                            <div class="about-img">
                            <?php $image = get_field('image_two') ?>
                                <img src="<?php echo $image['url']; ?>" class="img-fluid mt-0" alt="">
                            </div>
                            <div class="about-text">
                              <?php the_field('summary',13); ?>
                                <div class="btn_default mt-2"><a href="<?php echo get_page_link(13); ?>">Read More</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </section>
</div>
<div class="section_wrapp">
    <div class="section_block_wrapp">
        <section class="news bg-white  rounded-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title  position-relative">
                            <div class="section_sub">
                                <p>TESTIMONIALS
                                </p>
                                <div class="mb-lg-5 mb-4 mt-lg-3 mt-2">
                                    <h2>What Our Customer Says
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row review-slider">

                <?php $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
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
                    <div class="col-lg-6 col-md-6 mb-lg-0 mb-3 review-block">
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
        <section class="news bg-white pt-0 rounded-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 m-auto">
                        <div class="section_title  text-center position-relative">
                            <div class="section_sub">
                                <p>TIPS & RECEIPES
                                </p>
                                <div class="mb-lg-5 mb-3 mt-lg-3 mt-2">
                                    <h2>News & Blogs
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

<?php
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1 ;
$args = array(
    'post_type' => 'post',
    'orderby'=> 'date',
    'category_name'=>'blogs',
    'posts_per_page'=>100,
    'paged'=>$paged

);
$custom_query = new WP_Query($args);
while($custom_query->have_posts()):
    $custom_query->the_post();
    $postid = get_the_ID();
?>

                    <div class="col-lg-4 col-md-6">
                        <div class="news-block position-relative mb-4">

                            <div class="image_news"><a href=""><img src="<?php echo the_post_thumbnail_url(); ?>" alt="" loading="lazy"></a>
                            </div>
                            <div class="date"><strong><?php echo get_the_date('d'); ?></strong> <span><?php echo get_the_date('M'); ?></span></div>
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
        <?php include 'booking_panel-page.php'; ?>

    </div>



    <?php get_footer(); ?>