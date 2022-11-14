<?php if ( ! defined( 'ABSPATH' )  ) { die; } // Cannot access directly.

//
// Set a unique slug-like ID
//
$prefix = 'medinova_theme_options';

//
// Create options
//
CSF::createOptions( $prefix, array(
  'menu_title' => 'Theme Options',
  'menu_slug'  => 'theme-options',
  'menu_type'   => 'submenu',
  'menu_parent' => 'themes.php',
) );

//
// Create a section
//
CSF::createSection( $prefix, array(
  'title'  => 'Overview',
  'icon'   => 'fas fa-rocket',
  'fields' => array(

    //
    // A text field
    //


  )
) );

//
// Basic Fields
//
CSF::createSection( $prefix, array(
  'id'    => 'header_fields',
  'title' => 'Header Fields',
  'icon'  => 'fas fa-plus-circle',
) );

//
// Field: Topbar Settings
//
CSF::createSection( $prefix, array(
  'parent'      => 'header_fields',
  'title'       => __('Topbar Settings', 'medinova'),
  'icon'        => 'far fa-square',
  'description' => 'Visit documentation for more details on this field: <a href="http://codestarframework.com/documentation/#/fields?id=text" target="_blank">Field: text</a>',
  'fields'      => array(

    array(
      'id'    => 'phone',
      'type'  => 'text',
      'title' => __('Phone Number', 'medinova'),
      'default' => '+0271 837 248',
    ),

    array(
      'id'      => 'email',
      'type'    => 'text',
      'title'   => __('Email Address', 'medinova'),
      'default' => 'info@example.com',
    ),

    array(
          'id'      => 'fb',
          'type'    => 'text',
          'title'   => __('Enter Facebook URL', 'medinova'),
          'default' => 'https://facebook.com',
        ),


    array(
          'id'      => 'twitter',
          'type'    => 'text',
          'title'   => __('Enter Twitter URL', 'medinova'),
          'default' => 'https://twitter.com',
        ),

    array(
          'id'      => 'linkedin',
          'type'    => 'text',
          'title'   => __('Enter Linkedin URL', 'medinova'),
          'default' => 'https://linkedin.com',
        ),


    array(
          'id'      => 'instagram',
          'type'    => 'text',
          'title'   => __('Enter Instagram URL', 'medinova'),
          'default' => 'https://instagram.com',
        ),


    array(
          'id'      => 'youtube',
          'type'    => 'text',
          'title'   => __('Enter Youtube URL', 'medinova'),
          'default' => 'https://youtube.com',
        ),

    array(
          'id'      => 'logo',
          'type'    => 'text',
          'title'   => __('Logo Text', 'medinova'),
          'default' => __('Demo Logo', 'medinova'),
        ),



  )
) );


CSF::createSection( $prefix, array(
  'id'    => 'homepage_fields',
  'title' => 'Homepage Fields',
  'icon'  => 'fas fa-plus-circle',
) );

//
//  Hero Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Hero Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'hero-title',
      'type'  => 'text',
      'title' => __('Hero Title', 'medinova'),
      'default' => __('Welcome to Medinova', 'medinova'),
    ),

    array(
      'id'    => 'hero-tagline',
      'type'  => 'text',
      'title' => __('Hero Tagline', 'medinova'),
      'default' => __('Best Healthcare Solution In Your City', 'medinova'),
    ),

    
    array(
      'id'    => 'hero-btn-1',
      'type'  => 'text',
      'title' => __('Hero Button one', 'medinova'),
    ),

    array(
      'id'    => 'hero-btn-1-url',
      'type'  => 'text',
      'title' => __('Hero Button one URL', 'medinova'),
      'dependency' => array( 'hero-btn-1', '!=', '' ),
    ),

    array(
      'id'    => 'hero-btn-2',
      'type'  => 'text',
      'title' => __('Hero Button Two', 'medinova'),
    ),

    array(
      'id'    => 'hero-btn-2-url',
      'type'  => 'text',
      'title' => __('Hero Button Two URL', 'medinova'),
      'dependency' => array( 'hero-btn-2', '!=', '' ),
    ),

    array(
      'id'      => 'hero-image',
      'type'    => 'media',
      'title'   => __('Upload Hero Image', 'medinova'),
      'library' => 'image',
    ),

    
  )
) );



//  About Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('About Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'about_sec_title',
      'type'  => 'text',
      'title' => __('Section Title', 'medinova'),
      'default' => __('About Us', 'medinova'),
    ),

    array(
      'id'    => 'about_short_desc',
      'type'  => 'text',
      'title' => __('About Short Desc', 'medinova'),
      'default' => __('Best Medical Care For Yourself and Your Family', 'medinova'),
    ),


    array(
      'id'    => 'about_long_desc',
      'type'  => 'textarea',
      'title' => __('About Long Desc', 'medinova'),
      'default' => __('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'medinova'),
    ),


    //repeater fields
    array(
      'id'        => 'about_repeater',
      'type'      => 'repeater',
      'title'     => __('About Features', 'medinova'),
      'button_title' => __('Add New Feature', 'medinova'),
      'fields'    => array(
    
        array(
          'id'    => 'feature_icon',
          'type'  => 'text',
          'title' => __('Feature Icon', 'medinova'),
        ),
    
        array(
          'id'    => 'feature_type',
          'type'  => 'text',
          'title' => __('Feature Type', 'medinova'),
        ),
    
        array(
          'id'    => 'feature_title',
          'type'  => 'text',
          'title' => __('Feature Title', 'medinova'),
        ),

      ),


    ),

    

    array(
      'id'      => 'about_image',
      'type'    => 'media',
      'title'   => __('Upload About Image', 'medinova'),
      'library' => 'image',
    ),

    
  )
) );


//  Service Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Service Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'service_title',
      'type'  => 'text',
      'title' => __('Service Section Title', 'medinova'),
      'default' => __('Services', 'medinova'),
    ),

    array(
      'id'    => 'service_short_title',
      'type'  => 'text',
      'title' => __('Service Short Title', 'medinova'),
      'default' => __('Excellent Medical Services', 'medinova'),
    ),

    
  )
) );



//  Appoinment Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Appointment Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'app_title',
      'type'  => 'text',
      'title' => __('Appointment Title', 'medinova'),
      'default' => __('Appointment', 'medinova'),
    ),

    array(
      'id'    => 'app_tagline',
      'type'  => 'text',
      'title' => __('Appointment Tagline', 'medinova'),
      'default' => __('Make An Appointment For Your Family', 'medinova'),
    ),

    array(
      'id'    => 'app_desc',
      'type'  => 'textarea',
      'title' => __('Appointment Description', 'medinova'),
      'default' => __('Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing kasd ipsum. Dolor ea et dolore et at sea ea at dolor, justo ipsum duo rebum sea invidunt voluptua. Eos vero eos vero ea et dolore eirmod et. Dolores diam duo invidunt lorem. Elitr ut dolores magna sit. Sea dolore sanctus sed et. Takimata takimata sanctus sed.', 'medinova'),
    ),

    
    array(
      'id'    => 'app_btn_1',
      'type'  => 'text',
      'title' => __('Appointment Button one', 'medinova'),
    ),

    array(
      'id'    => 'app_btn_1_url',
      'type'  => 'text',
      'title' => __('Appointment Button one URL', 'medinova'),
      'dependency' => array( 'app_btn_1', '!=', '' ),
    ),

    array(
      'id'    => 'app_btn_2',
      'type'  => 'text',
      'title' => __('Appointment Button Two', 'medinova'),
    ),

    array(
      'id'    => 'app_btn_2_url',
      'type'  => 'text',
      'title' => __('Appointment Button Two URL', 'medinova'),
      'dependency' => array( 'app_btn_2', '!=', '' ),
    ),


    array(
      'id'    => 'app_form_title',
      'type'  => 'text',
      'title' => __('Appointment Form Title', 'medinova'),
      'default' => __('Book An Appointment', 'medinova'),
    ),

    
  )
) );



//  Doctors Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Doctors Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'dr_title',
      'type'  => 'text',
      'title' => __('Doctor Section Title', 'medinova'),
      'default' => __('Our Doctors', 'medinova'),
    ),

    array(
      'id'    => 'dr_short_title',
      'type'  => 'text',
      'title' => __('Doctor Short Title', 'medinova'),
      'default' => __('Qualified Healthcare Professionals', 'medinova'),
    ),

    
  )
) );



//  Medical Package Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Medical Package Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'package_title',
      'type'  => 'text',
      'title' => __('Medical Package Section Title', 'medinova'),
      'default' => __('Medical Packages', 'medinova'),
    ),

    array(
      'id'    => 'package_short_title',
      'type'  => 'text',
      'title' => __('Medical Package Short Title', 'medinova'),
      'default' => __('Awesome Medical Programs', 'medinova'),
    ),

    
  )
) );




//  Doctor Search Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Find Doctor Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'dr_search_title',
      'type'  => 'text',
      'title' => __('Search Doctor Section Title', 'medinova'),
      'default' => __('Find A Doctor', 'medinova'),
    ),

    array(
      'id'    => 'dr_search_short_title',
      'type'  => 'text',
      'title' => __('Search Doctor Short Title', 'medinova'),
      'default' => __('Awesome Medical Programs', 'medinova'),
    ),

    array(
      'id'    => 'dr_search_desc',
      'type'  => 'textarea',
      'title' => __('Search Doctor Description', 'medinova'),
      'default' => __('Duo ipsum erat stet dolor sea ut nonumy tempor. Tempor duo lorem eos sit sed ipsum takimata ipsum sit est. Ipsum ea voluptua ipsum sit justo', 'medinova'),
    ),

    
  )
) );




//  Testimonial Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Testimonial Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'testimonial_title',
      'type'  => 'text',
      'title' => __('Testimonial Section Title', 'medinova'),
      'default' => __('Testimonial', 'medinova'),
    ),

    array(
      'id'    => 'testimonial_short_title',
      'type'  => 'text',
      'title' => __('Testimonial Short Title', 'medinova'),
      'default' => __('Patients Say About Our Services', 'medinova'),
    ),
    
  )
) );





//  Blog Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'homepage_fields',
  'title'       => __('Blog Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'blog_title',
      'type'  => 'text',
      'title' => __('Blog Section Title', 'medinova'),
      'default' => __('Blog', 'medinova'),
    ),

    array(
      'id'    => 'blog_short_title',
      'type'  => 'text',
      'title' => __('Blog Short Title', 'medinova'),
      'default' => __('Our Latest Medical Blog Posts', 'medinova'),
    ),
    
  )
) );








//==========Contact Field Settings==================================
CSF::createSection( $prefix, array(
  'id'    => 'contact_fields',
  'title' => 'Contact Page Fields',
  'icon'  => 'fas fa-plus-circle',
) );


//  Contact Top Section
//
CSF::createSection( $prefix, array(
  'parent'      => 'contact_fields',
  'title'       => __('Contact Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'contact_title',
      'type'  => 'text',
      'title' => __('Contact Section Title', 'medinova'),
      'default' => __('Any Questions?', 'medinova'),
    ),

    array(
      'id'    => 'contact_short_title',
      'type'  => 'text',
      'title' => __('Contact Short Title', 'medinova'),
      'default' => __('Please Feel Free To Contact Us', 'medinova'),
    ),

    
    array(
      'id'    => 'contact_location',
      'type'  => 'text',
      'title' => __('Location', 'medinova'),
      'default' => '123 Street, New York, USA'
    ),

    array(
      'id'    => 'contact_phone',
      'type'  => 'text',
      'title' => __('Phone Number', 'medinova'),
      'default' => '+012 345 67890',
    ),

    array(
      'id'    => 'contact_email',
      'type'  => 'text',
      'title' => __('Email', 'medinova'),
      'default' => 'info@example.com',
    ),

    array(
      'id'    => 'contact_map_src',
      'type'  => 'textarea',
      'title' => __('Iframe Src Link', 'medinova'),
      'desc'  => __('Insert Iframe long src link here', 'medinova'),
      'default' => "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd",
    ),




  )
) );














//==========Footer Field Settings==================================
CSF::createSection( $prefix, array(
  'id'    => 'footer_fields',
  'title' => 'Footer Fields',
  'icon'  => 'fas fa-plus-circle',
) );


//  Footer Column one
//
CSF::createSection( $prefix, array(
  'parent'      => 'footer_fields',
  'title'       => __('Footer Column One', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'ftr_title_1',
      'type'  => 'text',
      'title' => __('Title ', 'medinova'),
      'default' => __('Get In Touch', 'medinova'),
    ),

    array(
      'id'    => 'ftr_desc',
      'type'  => 'textarea',
      'title' => __('Description', 'medinova'),
      'default' => __('No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor sed dolor', 'medinova'),
    ),

    array(
      'id'    => 'ftr_location',
      'type'  => 'text',
      'title' => __('Location', 'medinova'),
      'default' => '123 Street, New York, USA'
    ),

    array(
      'id'    => 'ftr_email',
      'type'  => 'text',
      'title' => __('Email', 'medinova'),
      'default' => 'info@example.com',
    ),

    array(
      'id'    => 'ftr_phone',
      'type'  => 'text',
      'title' => __('Phone Number', 'medinova'),
      'default' => '+012 345 67890',
    ),

    
  )
) );






//  Footer Column Two Quick Links
//
CSF::createSection( $prefix, array(
  'parent'      => 'footer_fields',
  'title'       => __('Footer Column Two', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'ftr_title_2',
      'type'  => 'text',
      'title' => __('Title ', 'medinova'),
      'default' => __('Quick Links', 'medinova'),
    ),


    
  )
) );



//  Footer Column Three Popular Links
//
CSF::createSection( $prefix, array(
  'parent'      => 'footer_fields',
  'title'       => __('Footer Column Three', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'ftr_title_3',
      'type'  => 'text',
      'title' => __('Title ', 'medinova'),
      'default' => __('Popular Links', 'medinova'),
    ),

    
  )
) );




//  Footer Column Four Popular Links
//
CSF::createSection( $prefix, array(
  'parent'      => 'footer_fields',
  'title'       => __('Footer Column Four', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'ftr_title_4',
      'type'  => 'text',
      'title' => __('Title ', 'medinova'),
      'default' => __('Newsletter', 'medinova'),
    ),

    array(
      'id'    => 'ftr_social_title',
      'type'  => 'text',
      'title' => __('Social Title ', 'medinova'),
      'default' => __('Follow', 'medinova'),
    ),

    

    array(
      'id'      => 'ftr_twitter',
      'type'    => 'text',
      'title'   => __('Enter Twitter URL', 'medinova'),
      'default' => 'https://twitter.com',
    ),

    array(
      'id'      => 'ftr_fb',
      'type'    => 'text',
      'title'   => __('Enter Facebook URL', 'medinova'),
      'default' => 'https://facebook.com',
    ),


array(
      'id'      => 'ftr_linkedin',
      'type'    => 'text',
      'title'   => __('Enter Linkedin URL', 'medinova'),
      'default' => 'https://linkedin.com',
    ),


array(
      'id'      => 'ftr_instagram',
      'type'    => 'text',
      'title'   => __('Enter Instagram URL', 'medinova'),
      'default' => 'https://instagram.com',
    ),
    
  )
) );





//  Footer Bottom Popular Links
//
CSF::createSection( $prefix, array(
  'parent'      => 'footer_fields',
  'title'       => __('Footer Bottom Section', 'medinova'),
  'icon'        => 'far fa-circle',
  'fields'      => array(

    array(
      'id'    => 'ftr_left_copyright',
      'type'  => 'wp_editor',
      'title' => __('Footer Left Copyright ', 'medinova'),
      'default' => __('© Your Site Name. All Rights Reserved.', 'medinova'),
    ),


    array(
      'id'    => 'ftr_right_text',
      'type'  => 'wp_editor',
      'title' => __('Footer Right Text', 'medinova'),
      'default' => __('Designed by HTML Codex', 'medinova'),
    ),

    
  )
) );

