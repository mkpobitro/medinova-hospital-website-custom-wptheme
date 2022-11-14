<?php


if(!function_exists('medinova_dr_custom_post_type')){
    function medinova_dr_custom_post_type(){

        $labels = array(
            'name'                  => _x( 'Doctors', 'Post type general name', 'medinova' ),
            'singular_name'         => _x( 'doctor', 'Post type singular name', 'medinova' ),
            'menu_name'             => _x( 'Doctors', 'Admin Menu text', 'medinova' ),
            'name_admin_bar'        => _x( 'doctor', 'Add New on Toolbar', 'medinova' ),
            'add_new'               => __( 'Add Doctor', 'medinova' ),
            'add_new_item'          => __( 'Add New Doctor', 'medinova' ),
            'new_item'              => __( 'New Doctor', 'medinova' ),
            'edit_item'             => __( 'Edit Doctor', 'medinova' ),
            'view_item'             => __( 'View Doctor', 'medinova' ),
            'all_items'             => __( 'All Doctors', 'medinova' ),
            'search_items'          => __( 'Search Doctors', 'medinova' ),
            'parent_item_colon'     => __( 'Parent Doctors:', 'medinova' ),
            'not_found'             => __( 'No Doctors found.', 'medinova' ),
            'not_found_in_trash'    => __( 'No Doctors found in Trash.', 'medinova' ),
            'featured_image'        => _x( 'Doctor Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'medinova' ),
            'set_featured_image'    => _x( 'Set Doctor cover image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'remove_featured_image' => _x( 'Remove Doctor cover image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'use_featured_image'    => _x( 'Use as cover image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'archives'              => _x( 'Doctor archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'medinova' ),
            'insert_into_item'      => _x( 'Insert into Doctor', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'medinova' ),


        );     
        $args = array(
            'labels'             => $labels,
            'description'        => 'Doctor custom post type.',
            'public'             => true,
            'publicly_queryable' => true,
            'show_ui'            => true,
            'show_in_menu'       => true,
            'query_var'          => true,
            'rewrite'            => array( 'slug' => 'doctor' ),
            'capability_type'    => 'post',
            'has_archive'        => true,
            'hierarchical'       => false,
            'menu_position'      => 20,
            'supports'           => array( 'title', 'editor', 'author', 'custom-fields', 'thumbnail' ),
            'taxonomies'         => array( 'category', 'post_tag' ),
            'show_in_rest'       => true,
            'menu_icon'          => 'dashicons-admin-users'
        );
         
        register_post_type( 'doctors', $args );

    }
}
add_action('init', 'medinova_dr_custom_post_type');
