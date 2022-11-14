<?php
$options = get_option( 'medinova_theme_options' );
?>

<div class="container-fluid sticky-top bg-white shadow-sm">
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
                <a href="index.html" class="navbar-brand">
                    <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-clinic-medical me-2"></i><?php echo esc_html($options['logo']); ?></h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>



                <div class="collapse navbar-collapse ms-auto" id="navbarCollapse">
                    
                    <!-- ul li menu for wordpress -->
                    
                           <?php 
                                wp_nav_menu(array(
                                    'theme_location' => 'primary-menu',
                                    'menu_class' => 'navbar-nav ms-auto py-0 ms-auto',
                                ))
                            ?> 
                    <!-- <ul class="navbar-nav ms-auto py-0">
                        <li><a href="index.html" class="nav-item nav-link active">Home</a></li>
                        <li><a href="about.html" class="nav-item nav-link">About</a></li>
                        <li><a href="service.html" class="nav-item nav-link">Service</a></li>
                        <li><a href="price.html" class="nav-item nav-link">Pricing</a></li>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <li><a href="blog.html" class="dropdown-item">Blog Grid</a></li>
                                <li><a href="detail.html" class="dropdown-item">Blog Detail</a></li>
                                <li><a href="team.html" class="dropdown-item">The Team</a></li>
                                <li><a href="testimonial.html" class="dropdown-item">Testimonial</a></li>
                                <li><a href="appointment.html" class="dropdown-item">Appointment</a></li>
                                <li><a href="search.html" class="dropdown-item">Search</a></li>
                            </div>
                        </div>
                        <li><a href="contact.html" class="nav-item nav-link">Contact</a></li>
                    </ul> -->


                    <!-- <div class="navbar-nav ms-auto py-0">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <a href="about.html" class="nav-item nav-link">About</a>
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <a href="price.html" class="nav-item nav-link">Pricing</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="detail.html" class="dropdown-item">Blog Detail</a>
                                <a href="team.html" class="dropdown-item">The Team</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="appointment.html" class="dropdown-item">Appointment</a>
                                <a href="search.html" class="dropdown-item">Search</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div> -->


                </div>


            </nav>
        </div>
    </div>