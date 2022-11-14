<?php

require_once get_template_directory() .'/inc/codestar/codestar-framework.php';
require_once get_template_directory() .'/inc/codestar/samples/theme-options.php';
require_once get_template_directory() .'/inc/custom-post/services.php';
require_once get_template_directory() .'/inc/custom-post/doctors.php';
require_once get_template_directory() .'/inc/custom-post/package.php';
require_once get_template_directory() .'/inc/custom-post/testimonial.php';


define('VERSION', time());

if(!function_exists('medinova_setup')){
    function medinova_setup(){

    /**
	 * Translations can be placed in the /languages/ directory.
	 */
	load_theme_textdomain( 'medinova', get_template_directory() . '/languages' );

	/**
	 * Add default posts and comments RSS feed links to &lt;head&gt;.
	 */
	add_theme_support( 'automatic-feed-links' );

	/**
	 * Enable support for post thumbnails and featured images.
	 */
	add_theme_support( 'post-thumbnails' );

	/**
	 * Add support for two custom navigation menus.
	 */
	register_nav_menus( array(
		'primary-menu'   => __( 'Primary Menu', 'medinova' ),
		'footer-menu' => __('Footer Menu', 'medinova' ),
	) );

	/**
	 * Enable support for the following post formats:
	 * aside, gallery, quote, image, and video
	 */
	add_theme_support( 'post-formats', array ( 'aside', 'gallery', 'quote', 'image', 'video' ) );

    }
}
add_action('after_setup_theme', 'medinova_setup');

/*
 <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="" rel="stylesheet">  

*/

if(!function_exists('medinova_assets')){

    function medinova_assets(){
        wp_enqueue_style('google-fonts', '//fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap');
    
        wp_enqueue_style('google-fonts', '//fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap');
    
        wp_enqueue_style('icon-fonts', '//cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css');
        wp_enqueue_style('bootstrap-icons', 'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css');
        wp_enqueue_style('owlcarousel-css', get_theme_file_uri('assets/lib/owlcarousel/assets/owl.carousel.min.css'));
        wp_enqueue_style('tempusdominus-bootstrap-css', get_theme_file_uri('assets/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css'));
    
        wp_enqueue_style('bootstrap-css', get_theme_file_uri('assets/css/bootstrap.min.css'));
        wp_enqueue_style('main-css', get_theme_file_uri('assets/css/style.css'));

        wp_enqueue_style('custom-css', get_stylesheet_uri());
    
    
    
    
    
        wp_enqueue_script('jquery', '//code.jquery.com/jquery-3.4.1.min.js', array(), VERSION, true);
        wp_enqueue_script('bootstrap-js', '//cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js', array('jquery'), VERSION, true);
    
        wp_enqueue_script('easing-js', get_theme_file_uri('assets/lib/easing/easing.min.js'), array('jquery'), VERSION, true);
        wp_enqueue_script('waypoints-js', get_theme_file_uri('assets/lib/waypoints/waypoints.min.js'), array('jquery'), VERSION, true);
        wp_enqueue_script('owlcarousel-js', get_theme_file_uri('assets/lib/owlcarousel/owl.carousel.min.js'), array('jquery'), VERSION, true);
        wp_enqueue_script('tempusdominus-js', get_theme_file_uri('assets/lib/tempusdominus/js/moment.min.js'), array('jquery'), VERSION, true);
        wp_enqueue_script('tempusdominus-timezone-js', get_theme_file_uri('assets/lib/tempusdominus/js/moment-timezone.min.js'), array('jquery'), VERSION, true);
        wp_enqueue_script('tempusdominus-bootstrap-js', get_theme_file_uri('assets/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js'), array('jquery','bootstrap-js'), VERSION, true);
    
        wp_enqueue_script('main-js', get_theme_file_uri('assets/js/main.js'), array('jquery','bootstrap-js'), VERSION, true);
    
    }
}

add_action('wp_enqueue_scripts', 'medinova_assets');






// add a link class in wp nav menu
function medinova_add_menuclass($ulclass) {
    return preg_replace('/<a /', '<a class="nav-item nav-link"', $ulclass);
  }
add_filter('wp_nav_menu','medinova_add_menuclass');




// function medinova_add_ftr_menuclass($ulclass) {
//     return preg_replace('/<a /', '<a class="text-light mb-2"', $ulclass);
//   }
// add_filter('wp_nav_menu','medinova_add_ftr_menuclass');








if(!function_exists('medinova_widgets_init')){
    function medinova_widgets_init(){


        register_sidebar( array(
            'name'          => __( 'Footer One', 'medinova' ),
            'id'            => 'ftr_1',
            'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'medinova' ),
            'before_widget' => '<li id="%1$s" class="widget %2$s">',
            'after_widget'  => '</li>',
            'before_title'  => '<h2 class="widgettitle">',
            'after_title'   => '</h2>',
        ) );




    }
}
add_action( 'widgets_init', 'medinova_widgets_init' );