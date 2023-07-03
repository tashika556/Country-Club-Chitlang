<?php

register_nav_menus(
    array('primary-menu'=>'Top Menu')
)
?>

<?php
add_theme_support('post-thumbnails');
?>

<?php 
function createrooms_posttype(){
    register_post_type('rooms',
    array(
        'labels'=>array(
            'name'=>__('Accomodation'),
            'singular_name'=>__('rooms'),
        ),
        'public'=>true,
        'has_archive'=>true,
        'rewrite'=>array('slug','rooms'),
        'supports'=>array('title','editor','thumbnail'),
        'taxonomies'=>array('category'),
        'show_in_rest'=>true
    )
    );
}
add_action('init','createrooms_posttype');
?>

<?php 
function createmenus_posttype(){
    register_post_type('menus',
    array(
        'labels'=>array(
            'name'=>__('Menus'),
            'singular_name'=>__('menus'),
        ),
        'public'=>true,
        'has_archive'=>true,
        'rewrite'=>array('slug','menus'),
        'supports'=>array('title','editor','thumbnail'),
        'taxonomies'=>array('category'),
        'show_in_rest'=>true
    )
    );
}
add_action('init','createmenus_posttype');
?>

<?php
function createservices_posttype(){
    register_post_type('services',
    array(
        'labels'=>array(
            'name'=>__('Services'),
            'singular_name'=>__('services'),
        ),
        'public'=>true,
        'has_archive'=>true,
        'rewrite'=>array('slug','services'),
        'supports'=>array('title','editor','thumbnail'),
        'taxonomies'=>array('category'),
        'show_in_rest'=>true
    )
    );
}
add_action('init','createservices_posttype');
?>
<?php
function createamenities_posttype(){
    register_post_type('amenities',
    array(
        'labels'=>array(
            'name'=>__('Amenities'),
            'singular_name'=>__('amenities'),
        ),
        'public'=>true,
        'has_archive'=>true,
        'rewrite'=>array('slug','amenities'),
        'supports'=>array('title','editor','thumbnail'),
        'taxonomies'=>array('category'),
        'show_in_rest'=>true
    )
    );
}
add_action('init','createamenities_posttype');
?>
<?php
function createpartners_posttype(){
    register_post_type('partners',
    array(
        'labels'=>array(
            'name'=>__('Booking-Partners'),
            'singular_name'=>__('partners'),
        ),
        'public'=>true,
        'has_archive'=>true,
        'rewrite'=>array('slug','partners'),
        'supports'=>array('title','editor','thumbnail'),
        'taxonomies'=>array('category'),
        'show_in_rest'=>true,
    ));
}
add_action('init','createpartners_posttype'); ?>

<?php
function createreviews_posttype(){
    register_post_type('reviews',
    array(
        'labels'=>array(
            'name'=>__('Reviews'),
            'singular_name'=>__('reviews'),
        ),
        'public'=>true,
        'has_archive'=>true,
        'rewrite'=>array('slug','reviews'),
        'supports'=>array('title','editor','thumbnail'),
        'taxonomies'=>array('category'),
        'show_in_rest'=>true
    )
    );
}
add_action('init','createreviews_posttype');
?>
