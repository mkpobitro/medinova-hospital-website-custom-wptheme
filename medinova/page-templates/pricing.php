<?php 

// Template Name: Pricing Template

?>

<?php get_header(); ?>

<body>
    <!-- Topbar Start -->
        <?php get_template_part('template-parts/content','topbar'); ?>
    <!-- Topbar End -->


    <!-- Navbar Start -->
        <?php get_template_part('template-parts/content','navbar'); ?>
    <!-- Navbar End -->


    <!-- Pricing Plan Start -->
    <?php get_template_part('template-parts/content','pricing'); ?>
    <!-- Pricing Plan End -->


    <!-- Appointment Start -->
        <?php get_template_part('template-parts/content','appoinment'); ?>
    <!-- Appointment End -->


    <!-- Team Start -->
        <?php get_template_part('template-parts/content','team'); ?>
    <!-- Team End -->

    

    <?php get_footer();