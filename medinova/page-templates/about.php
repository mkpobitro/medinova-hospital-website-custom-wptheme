<?php 

// Template Name: About Template

?>

<?php get_header(); ?>

<!-- Topbar Start -->
<?php get_template_part('template-parts/content','topbar'); ?>
<!-- Topbar End -->


<!-- Navbar Start -->
    <?php get_template_part('template-parts/content','navbar'); ?>
<!-- Navbar End -->

<!-- About Start -->
<?php get_template_part('template-parts/content','about'); ?>
<!-- About End -->



<!-- Search Start -->
<?php get_template_part('template-parts/content','search'); ?>
<!-- Search End -->


<!-- Team Start -->
<?php get_template_part('template-parts/content','team'); ?>
<!-- Team End -->


<?php get_footer();
