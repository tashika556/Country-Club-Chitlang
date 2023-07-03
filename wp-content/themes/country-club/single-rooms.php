<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php  echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp" id="room_page">
        <section class="room_page-top bg-white py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="room_info-wrapp d-flex justify-content-between align-items-center h-100">
                            <div class="room_info-item">
                                <p>BEDS</p>
                                <strong><?php the_field('beds'); ?></strong>
                            </div>
                            <div class="room_info-item">
                                <p>ROOM SIZE</p>
                                <strong><?php the_field('room_size'); ?></strong>
                            </div>
                            <div class="room_info-item">
                                <p>OCCUPANCY</p>
                                <strong><?php the_field('occupancy'); ?></strong>
                            </div>
                            <div class="room_info-item">
                                <p>VIEW</p>
                                <strong><?php the_field('view'); ?></strong>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="price d-flex align-items-center flex-column justify-content-center bg-white">
                            <span class="title-price text-uppercase">Price</span>
                            <h3><?php the_field('price'); ?></h3>
                            <a class="akf-button akf-button--primary" type="button" href="<?php echo get_page_link(115); ?>">

                                <span class="button-lefticon "> Book Now</span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <section class="room_page bg-white">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center">
                        <div class="room_detail-text">
                            <h5><?php
                            if(have_posts()) : while(have_posts()) : the_post(); 
                            the_content();
endwhile;
endif;
                            ?></h5>
                        </div>
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </section>
</div>
<div class="section_wrapp">
    <div class="">

        <section class="slider_homepage py-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="slider stick-dots">
                   <?php $images = get_field('images'); ?>
                   <?php if($images):
                   foreach($images as $image) : ?>
                            <div class="slide">
                                <div class="slide__img">
                                    <img src="" alt="" data-lazy="<?php echo $image['url']; ?>" class="full-image animated"
                                        data-animation-in="zoomInImage" />
                                </div>
                             
                            </div>
<?php endforeach;
endif; ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </section>
</div>

<div class="section_wrapp">
    <div class=" section_block_wrapp">
        <section class="news bg-white  rounded-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section_title position-relative">
                            <div class="section_sub section_margin">
                                <p>Facilities
                                </p>
                                <h2>Rooms Facilities
                                </h2>
                            </div>
                            <div class="facilities_list services_list">
                                <ul>

                                <?php
                                if(have_rows('room_facilities')) : while(have_rows('room_facilities')) : the_row();

                                ?>
                                    <li>
                                    <?php $image = get_sub_field('image');?>    
                                    <img
                                                src="<?php echo $image['url']; ?>"
                                                aria-hidden="true"><?php the_sub_field('title'); ?>
                                    </li>
<?php  endwhile;
else:
endif;
?>
                                
                                 

                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="facilities-img">
                            <?php $image = get_field('image'); ?>
                            <img src="<?php echo $image['url']; ?>" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php include 'booking_panel-page.php'; ?>
    </div>



    <?php get_footer(); ?>