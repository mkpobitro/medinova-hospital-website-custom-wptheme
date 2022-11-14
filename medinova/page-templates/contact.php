<?php 

// Template Name: Contact Template

?>

<?php get_header(); 

$options = get_option( 'medinova_theme_options' );

?>

    <!-- Topbar Start -->
    <?php get_template_part('template-parts/content','topbar'); ?>
    <!-- Topbar End -->


    <!-- Navbar Start -->
        <?php get_template_part('template-parts/content','navbar'); ?>
    <!-- Navbar End -->



    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"><?php echo esc_html($options['contact_title']); ?></h5>
                <h1 class="display-4"><?php echo esc_html($options['contact_short_title']); ?></h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-location-arrow text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><?php echo esc_html($options['contact_location']); ?></h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-phone text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><?php echo esc_html($options['contact_phone']); ?></h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-envelope-open text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><?php echo esc_html($options['contact_email']); ?></h6>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12" style="height: 500px;">
                    <div class="position-relative h-100">
                        
                        
                        <?php 
                        // echo "<pre>";
                        //  echo $options['contact_map'];
                        // echo "</pre>";
                        ?>
                        <iframe class="position-relative w-100 h-100"
                            src="<?php echo esc_url($options['contact_map_src']); ?>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                            frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 m-5 mb-0">

                    <?php echo do_shortcode('[contact-form-7 id="144" title="contact form"]'); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


<?php get_footer();