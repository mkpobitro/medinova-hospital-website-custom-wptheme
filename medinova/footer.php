<?php
$options = get_option( 'medinova_theme_options' );
?>

<!-- Footer Start -->
<div class="container-fluid bg-dark text-light mt-5 py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4"><?php echo esc_html($options['ftr_title_1']); ?></h4>
                    <p class="mb-4"><?php echo esc_html($options['ftr_desc']); ?></p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary me-3"></i><?php echo esc_html($options['ftr_location']); ?></p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary me-3"></i><?php echo esc_html($options['ftr_email']); ?></p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary me-3"></i><?php echo esc_html($options['ftr_phone']); ?></p>
                </div>


                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4"><?php echo esc_html($options['ftr_title_2']); ?></h4>
                    <div class="d-flex flex-column justify-content-start">

                        <?php 
                                wp_nav_menu(array(
                                    'theme_location' => 'footer-menu',
                                ))
                            ?> 

                        <!-- <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Latest Blog</a>
                        <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a> -->
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4"><?php echo esc_html($options['ftr_title_3']); ?></h4>
                    <div class="d-flex flex-column justify-content-start">

                    <?php 
                                wp_nav_menu(array(
                                    'theme_location' => 'footer-menu',
                                ))
                            ?> 

                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4"><?php echo esc_html($options['ftr_title_4']); ?></h4>
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control p-3 border-0" placeholder="Your Email Address">
                            <button class="btn btn-primary">Sign Up</button>
                        </div>
                    </form>
                    <h6 class="text-primary text-uppercase mt-4 mb-3"><?php echo esc_html($options['ftr_social_title']); ?></h6>
                    <div class="d-flex">
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="<?php echo esc_url($options['ftr_twitter']) ?>"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="<?php echo esc_url($options['ftr_fb']) ?>"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="<?php echo esc_url($options['ftr_linkedin']) ?>"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="<?php echo esc_url($options['ftr_instagram']) ?>"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-light border-top border-secondary py-4">
        <div class="container">
            <div class="row g-5">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-md-0"><?php echo $options['ftr_left_copyright']; ?></p>
                    <!-- <p class="mb-md-0">&copy; <a class="text-primary" href="#">Your Site Name</a>. All Rights Reserved.</p> -->
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <p class="mb-0"><?php echo $options['ftr_right_text']; ?></p>
                    <!-- <p class="mb-0">Designed by <a class="text-primary" href="https://htmlcodex.com">HTML Codex</a></p> -->
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <?php wp_footer(); ?>
</body>

</html>