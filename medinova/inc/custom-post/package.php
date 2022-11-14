<?php


if(!function_exists('medinova_pricing_custom_post_type')){
    function medinova_pricing_custom_post_type(){

        $labels = array(
            'name'                  => _x( 'Medical Packages', 'Post type general name', 'medinova' ),
            'singular_name'         => _x( 'package', 'Post type singular name', 'medinova' ),
            'menu_name'             => _x( 'Medical Packages', 'Admin Menu text', 'medinova' ),
            'name_admin_bar'        => _x( 'package', 'Add New on Toolbar', 'medinova' ),
            'add_new'               => __( 'Add Package', 'medinova' ),
            'add_new_item'          => __( 'Add New Package', 'medinova' ),
            'new_item'              => __( 'New Package', 'medinova' ),
            'edit_item'             => __( 'Edit Package', 'medinova' ),
            'view_item'             => __( 'View Package', 'medinova' ),
            'all_items'             => __( 'All Packages', 'medinova' ),
            'search_items'          => __( 'Search Packages', 'medinova' ),
            'parent_item_colon'     => __( 'Parent Packages:', 'medinova' ),
            'not_found'             => __( 'No Packages found.', 'medinova' ),
            'not_found_in_trash'    => __( 'No Packages found in Trash.', 'medinova' ),
            'featured_image'        => _x( 'Package Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'medinova' ),
            'set_featured_image'    => _x( 'Set Package cover image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'remove_featured_image' => _x( 'Remove Package cover image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'use_featured_image'    => _x( 'Use as cover image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'medinova' ),
            'archives'              => _x( 'Package archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'medinova' ),
            'insert_into_item'      => _x( 'Insert into Package', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'medinova' ),


        );     
        $args = array(
            'labels'             => $labels,
            'description'        => 'Package custom post type.',
            'public'             => true,
            'publicly_queryable' => true,
            'show_ui'            => true,
            'show_in_menu'       => true,
            'query_var'          => true,
            'rewrite'            => array( 'slug' => 'package' ),
            'capability_type'    => 'post',
            'has_archive'        => true,
            'hierarchical'       => false,
            'menu_position'      => 20,
            'supports'           => array( 'title', 'editor', 'custom-fields', 'thumbnail' ),
            'taxonomies'         => array( 'category', 'post_tag' ),
            'show_in_rest'       => true,
            'menu_icon'          => 'dashicons-shield'
        );
         
        register_post_type( 'package', $args );

    }
}
add_action('init', 'medinova_pricing_custom_post_type');
