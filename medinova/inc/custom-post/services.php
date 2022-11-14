<?php


if(!function_exists('medinova_custom_post_type')){
    function medinova_custom_post_type(){

        $labels = array(
            'name'                  => _x( 'Services', 'Post type general name', 'medinova' ),
            'singular_name'         => _x( 'service', 'Post type singular name', 'medinova' ),
            'menu_name'             => _x( 'Services', 'Admin Menu text', 'medinova' ),
            'name_admin_bar'        => _x( 'service', 'Add New on Toolbar', 'medinova' ),
            'add_new'               => __( 'Add New Service', 'medinova' ),
            'add_new_item'          => __( 'Add New Services', 'medinova' ),
            'new_item'              => __( 'New Service', 'medinova' ),
            'edit_item'             => __( 'Edit service', 'medinova' ),
            'view_item'             => __( 'View service', 'medinova' ),
            'all_items'             => __( 'All services', 'medinova' ),
            'search_items'          => __( 'Search services', 'medinova' ),
            'parent_item_colon'     => __( 'Parent services:', 'medinova' ),
            'not_found'             => __( 'No services found.', 'medinova' ),
            'not_found_in_trash'    => __( 'No services found in Trash.', 'medinova' ),
            'featured_image'        => _x( 'Service Cover Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'medinova' ),
            'set_featured_image'    => _x( 'Set Service cover image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'remove_featured_image' => _x( 'Remove Service cover image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'use_featured_image'    => _x( 'Use as cover image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'archives'              => _x( 'Service archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'medinova' ),
            'insert_into_item'      => _x( 'Insert into Service', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'medinova' ),
            'uploaded_to_this_item' => _x( 'Uploaded to this service', 'Overrides the “Uploaded to this post”/”Uploaded to this page” phrase (used when viewing media attached to a post). Added in 4.4', 'medinova' ),

        );     
        $args = array(
            'labels'             => $labels,
            'description'        => 'Service custom post type.',
            'public'             => true,
            'publicly_queryable' => true,
            'show_ui'            => true,
            'show_in_menu'       => true,
            'query_var'          => true,
            'rewrite'            => array( 'slug' => 'service' ),
            'capability_type'    => 'post',
            'has_archive'        => true,
            'hierarchical'       => false,
            'menu_position'      => 20,
            'supports'           => array( 'title', 'editor', 'author', 'custom-fields' ),
            'taxonomies'         => array( 'category', 'post_tag' ),
            'show_in_rest'       => true,
            'menu_icon'          => 'dashicons-screenoptions'
        );
         
        register_post_type( 'services', $args );

    }
}
add_action('init', 'medinova_custom_post_type');
