<!-- Template Name: Menu Page -->
<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp">
    <?php
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$args = array(
    'post_type' => 'menus',
    'orderby' => array(
        'order' => 'DESC',
        'meta_key' => 'bar',
    ),
    'category_name' => 'menus',
    'posts_per_page' => 100,
    'paged' => $paged
);
$custom_query = new WP_Query($args);

if ($custom_query->have_posts()) {
    $class_colors = array('bg-white', 'bg_black');
    $class_colorsdiv = array('gry_two', 'bg_black_two');
    $class_colorstext = array('','text-white');
    $class_colorstext2 = array('','black-text');
    $color_count = count($class_colors);
    $color_countdiv = count($class_colorsdiv);
    $color_counttext = count ($class_colorstext);
    $color_counttext2 = count ($class_colorstext2);
    $i = 0;
    ?>
    <?php
    while ($custom_query->have_posts()) {
        $custom_query->the_post();
        $postid = get_the_ID();
        $class_color = $class_colors[$i % $color_count];
        $class_colordiv = $class_colorsdiv[$i % $color_countdiv];
        $class_colortext = $class_colorstext[$i % $color_counttext];
        $class_colortext2 = $class_colorstext2[$i % $color_counttext2];

        ?>
       <section class="digital_menu <?php echo $class_color; ?>">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="digital_menu-wrap position-relative">
                            <div class="digital_menu-right <?php echo $class_colordiv; ?> <?php echo $class_colortext; ?>">

                              
                                <div class="pb-3">
                                    <h1><?php the_title(); ?></h1>
                                </div>

                                <div class="menu_time">
                                    <div class="mb-1">
                                        <h6>AVAILABLE:</h6>
                                    </div>
                                    <h5><?php the_field('available') ?> services</h5>
                                </div>
                            </div>
                            <div class="digital_menu-img">
                                <img src="<?php echo the_post_thumbnail_url(); ?>" class="img-fluid" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">

                        <div class="menu_list-restaurant">
                            <div class="food-menu-item">

                            <?php if(have_rows('food_menus')) : while(have_rows('food_menus')) : the_row(); ?>
                                <div class="food-menu-main d-flex align-items-center mb-4">
                                    <div class="menu-list_img">
                                        <?php $image = get_sub_field('image') ?>
                                        <img src="<?php echo $image['url']; ?>" class="img-fluid" alt="">
                                    </div>
                                    <div class="single-item position-relative ml-3">
                                        <h3><a href="" class="<?php echo $class_colortext; ?>"><?php the_sub_field('title'); ?></a>
                                        </h3>
                                        <div class="mb-3">
                                            <p class="<?php echo $class_colortext2; ?>"><?php the_sub_field('food_summary') ?></p>
                                        </div>
                                        <h5><?php the_sub_field('price'); ?></h5>
                                    </div>
                                </div>
                                
                             <?php endwhile;
                             endif; ?>
                                


                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php
        $i++;
    }
    ?>

    <?php
    wp_reset_postdata();
} else {
    echo 'No posts found.';
}
?>

       
   <?php include 'booking_panel-page.php' ?>

    </div>

    <?php get_footer(); ?>