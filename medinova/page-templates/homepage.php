<?php 

// Template Name: Home Template

?>

<?php get_header(); ?>

<body>
    <!-- Topbar Start -->
        <?php get_template_part('template-parts/content','topbar'); ?>
    <!-- Topbar End -->


    <!-- Navbar Start -->
        <?php get_template_part('template-parts/content','navbar'); ?>
    <!-- Navbar End -->


    <!-- Hero Start -->
        <?php get_template_part('template-parts/content','hero'); ?>
    <!-- Hero End -->


    <!-- About Start -->
        <?php get_template_part('template-parts/content','about'); ?>
    <!-- About End -->
    

    <!-- Services Start -->
        <?php get_template_part('template-parts/content','services'); ?>
    <!-- Services End -->


    <!-- Appointment Start -->
        <?php get_template_part('template-parts/content','appoinment'); ?>
    <!-- Appointment End -->


    <!-- Pricing Plan Start -->
        <?php get_template_part('template-parts/content','pricing'); ?>
    <!-- Pricing Plan End -->


    <!-- Team Start -->
        <?php get_template_part('template-parts/content','team'); ?>
    <!-- Team End -->


    <!-- Search Start -->
        <?php get_template_part('template-parts/content','search'); ?>
    <!-- Search End -->


    <!-- Testimonial Start -->
        <?php get_template_part('template-parts/content','testimonial'); ?>
    <!-- Testimonial End -->


    <!-- Blog Start -->
        <?php get_template_part('template-parts/content','blog'); ?>
    <!-- Blog End -->
    

    <?php get_footer();