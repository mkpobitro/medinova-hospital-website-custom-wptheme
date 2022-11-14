<?php
$options = get_option( 'medinova_theme_options' );
?>

<div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"><?php echo esc_html($options['testimonial_title']) ?></h5>
                <h1 class="display-4"><?php echo esc_html($options['testimonial_short_title']) ?></h1>
            </div>

            <div class="row justify-content-center">

                <div class="col-lg-8">

                    <div class="owl-carousel testimonial-carousel">


                    <?php  
                    $args = array(
                        'post_type' => 'testimonial',
                        'max_num_pages' => -1,
                    );
                    $testimonials = new WP_Query($args);

                    while($testimonials->have_posts()){
                        $testimonials->the_post(); 
                        
                        $img_src = get_the_post_thumbnail_url(get_the_ID(),'large');
                        ?>

                        <div class="testimonial-item text-center">
                            <div class="position-relative mb-5">

                                <img class="img-fluid rounded-circle mx-auto" src="<?php echo esc_attr($img_src) ?>" alt="">

                                <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle" style="width: 60px; height: 60px;">
                                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                                </div>
                            </div>
                            <p class="fs-4 fw-normal"><?php apply_filters('the_content', the_content()); ?></p>
                            <hr class="w-25 mx-auto">
                            <h3><?php the_title(); ?></h3>
                            <h6 class="fw-normal text-primary mb-3"><?php the_field('designation'); ?></h6>
                        </div>

                        <?php
                    }

                    wp_reset_query();
                    ?>



                        <!-- <div class="testimonial-item text-center">
                            <div class="position-relative mb-5">
                                <img class="img-fluid rounded-circle mx-auto" src="<?php echo get_template_directory_uri(); ?>/assets/img/testimonial-2.jpg" alt="">
                                <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle" style="width: 60px; height: 60px;">
                                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                                </div>
                            </div>
                            <p class="fs-4 fw-normal">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat. Erat dolor rebum sit ipsum.</p>
                            <hr class="w-25 mx-auto">
                            <h3>Patient Name</h3>
                            <h6 class="fw-normal text-primary mb-3">Profession</h6>
                        </div>

                        <div class="testimonial-item text-center">
                            <div class="position-relative mb-5">
                                <img class="img-fluid rounded-circle mx-auto" src="<?php echo get_template_directory_uri(); ?>/assets/img/testimonial-3.jpg" alt="">
                                <div class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle" style="width: 60px; height: 60px;">
                                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                                </div>
                            </div>
                            <p class="fs-4 fw-normal">Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat. Erat dolor rebum sit ipsum.</p>
                            <hr class="w-25 mx-auto">
                            <h3>Patient Name</h3>
                            <h6 class="fw-normal text-primary mb-3">Profession</h6>
                        </div> -->

                    </div>

                </div>

            </div>

        </div>
    </div>