<!-- Template Name: Booking Page -->
<?php get_header(); ?>

<section class="banner img_bg" style="background-image: url(<?php echo the_post_thumbnail_url(); ?>);">
    <div class="slider_content text-center">
        <h3 class="text-uppercase"><?php the_title(); ?></h3>
    </div>
</section>
<div class="section_wrapp">
    <div class="section_block_wrapp" id="room_page">
        <section id="book_now" class="book-now rounded-0 bg-white  before_img before_img ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">

                        <div class="section_sub section_margin">
                           <div class="mb-3"> <p><?php the_title(); ?>
                            </p></div>
                            <h2>Pick a room that best suits your taste and budget
                            </h2>
                        </div>
                        <div class="left_block">
                            <div class="div-wrapp mb-3">

                                <div class="text_block d-flex flex-column justify-content-center">
                                    <h5>Address</h5>
                                    <div class="mt-2">
                                        <p><?php the_field('address',50) ;?></p>
                                    </div>
                                </div>
                            </div>
                            <div class="div-wrapp mb-3">

                                <div class="text_block d-flex flex-column justify-content-center">
                                    <h5>Phone Number</h5>
                                    <div class="mt-2 phone_book">
                                        <a href="tel: <?php the_field('phone',50) ;?>"><?php the_field('phone',50) ;?></a>
                                    </div>
                                </div>
                            </div>
                            <div class="div-wrapp mb-3">

                                <div class="text_block d-flex flex-column justify-content-center">
                                    <h5>Email Address</h5>
                                    <div class="mt-2">
                                        <a href="mailto:<?php the_field('email',50) ;?>">
                                        <?php the_field('email',50) ;?>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="right_side_box ">
                            <div action="" class="form">
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