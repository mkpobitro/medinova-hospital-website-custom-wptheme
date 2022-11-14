<?php
$options = get_option( 'medinova_theme_options' );
?>

<div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5"><?php echo esc_html($options['dr_title']); ?></h5>
                <h1 class="display-4"><?php echo esc_html($options['dr_short_title']); ?></h1>
            </div>

            <div class="owl-carousel team-carousel position-relative">

            <?php  
            $args = array(
                'post_type' => 'doctors',
                'max_num_pages' => -1,
            );
            $doctors = new WP_Query($args);

            while($doctors->have_posts()){
                $doctors->the_post(); ?>

                    <div class="team-item">
                        <div class="row g-0 bg-light rounded overflow-hidden">
                            <div class="col-12 col-sm-5 h-100">
                                <img class="img-fluid h-100" src="<?php the_post_thumbnail('medium'); ?>" style="object-fit: cover;">
                            </div>
                            <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                <div class="mt-auto p-4">
                                    <h3><?php the_title(); ?></h3>
                                    <h6 class="fw-normal fst-italic text-primary mb-4"><?php esc_html(the_field('doctor_speciality')); ?></h6>
                                    <p class="m-0"><?php the_content(); ?></p>
                                </div>
                                <div class="d-flex mt-auto border-top p-4">
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="<?php esc_url(the_field('twitter_url')); ?>"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="<?php esc_url(the_field('fb_url')); ?>"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="<?php esc_url(the_field('linkedin_url')); ?>"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                <?php
            }

            wp_reset_query();
            ?>



                <!-- <div class="team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="<?php echo get_template_directory_uri(); ?>/assets/img/team-2.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-auto p-4">
                                <h3>Doctor Name</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                <p class="m-0">Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum dolor</p>
                            </div>
                            <div class="d-flex mt-auto border-top p-4">
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="<?php echo get_template_directory_uri(); ?>/assets/img/team-3.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-auto p-4">
                                <h3>Doctor Name</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                <p class="m-0">Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum dolor</p>
                            </div>
                            <div class="d-flex mt-auto border-top p-4">
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div> -->


            </div>

        </div>
    </div>