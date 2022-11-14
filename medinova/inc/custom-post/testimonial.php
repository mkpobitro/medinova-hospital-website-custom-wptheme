<?php


if(!function_exists('medinova_testimonial_custom_post_type')){
    function medinova_testimonial_custom_post_type(){

        $labels = array(
            'name'                  => _x( 'Testimonials', 'Post type general name', 'medinova' ),
            'singular_name'         => _x( 'testimonial', 'Post type singular name', 'medinova' ),
            'menu_name'             => _x( 'Testimonials', 'Admin Menu text', 'medinova' ),
            'name_admin_bar'        => _x( 'testimonial', 'Add New on Toolbar', 'medinova' ),
            'add_new'               => __( 'Add testimonial', 'medinova' ),
            'add_new_item'          => __( 'Add New testimonial', 'medinova' ),
            'new_item'              => __( 'New testimonial', 'medinova' ),
            'edit_item'             => __( 'Edit testimonial', 'medinova' ),
            'view_item'             => __( 'View testimonial', 'medinova' ),
            'all_items'             => __( 'All Testimonials', 'medinova' ),
            'search_items'          => __( 'Search Testimonials', 'medinova' ),
            'parent_item_colon'     => __( 'Parent Testimonials:', 'medinova' ),
            'not_found'             => __( 'No Testimonials found.', 'medinova' ),
            'not_found_in_trash'    => __( 'No Testimonials found in Trash.', 'medinova' ),
            'featured_image'        => _x( 'testimonial Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'medinova' ),
            'set_featured_image'    => _x( 'Set testimonial cover image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'remove_featured_image' => _x( 'Remove testimonial cover image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'use_featured_image'    => _x( 'Use as cover image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'archives'              => _x( 'testimonial archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'medinova' ),
            'insert_into_item'      => _x( 'Insert into testimonial', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'medinova' ),


        );     
        $args = array(
            'labels'             => $labels,
            'description'        => 'testimonial custom post type.',
            'public'             => true,
            'publicly_queryable' => true,
            'show_ui'            => true,
            'show_in_menu'       => true,
            'query_var'          => true,
            'rewrite'            => array( 'slug' => 'testimonial' ),
            'capability_type'    => 'post',
            'has_archive'        => true,
            'hierarchical'       => false,
            'menu_position'      => 20,
            'supports'           => array( 'title', 'editor', 'thumbnail' ),
            'taxonomies'         => array( 'category', 'post_tag' ),
            'show_in_rest'       => true,
            'menu_icon'          => 'dashicons-testimonial'
        );
         
        register_post_type( 'testimonial', $args );

    }
}
add_action('init', 'medinova_testimonial_custom_post_type');
