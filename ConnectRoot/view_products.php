<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="script/glide.core.css">
    <link rel="stylesheet" href="script/glide.theme.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="master.css">
    <link href='https://fonts.googleapis.com/css?family=Muli' rel='stylesheet'>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
      <script type="text/javascript" src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    
    <link href="https://fonts.googleapis.com/css2?family=Muli:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <style>
       @media (max-width: 991.98px) {
           .m-4{
               margin: 0px !important;
           }
    
}
    </style>
    <!-- Bootstrap CSS end -->

    <!-- styling for the page start-->
    <style>
        body {
            padding-top: 60px;
            background: whitesmoke;
        }
        
        .card:hover .card-img-top {
  -webkit-transform: none !important;
          transform: none !important;
        }
        
        /* transition on page load */
        .transition-effect{
            animation: transitionIn 0.75s;
        }

        @keyframes transitionIn {
            from {
                opacity: 0;
                transform: rotateX(-10deg);
            }

            to {
                opacity: 1;
                transform: rotateX(0);
            }
        }
    </style>
    <!-- styling for the page end -->


    <title>Our Products</title>
</head>
<body>
    <!-- navbar start -->
    <header class="header">
    <nav class="navbar-scroll navbar navbar-expand-lg fixed-top ">
        <div class="container-fluid ">
            <div class="ml-4 pl-2">

                <a href="index2.html" class="navbar-brand  text-uppercase" >
                    <img src="img/Brand_Logo.png" alt="" class="logo">
                  
                </a>
            </div>
            <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><i class="fa fa-bars"></i></button>
            
            <div id="navbarSupportedContent" class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="#" class="nav-link  ">Home <span class="sr-only">(current)</span></a></li>
                    <li class="nav-item"><a href="aboutus.html" class="nav-link  ">About us</a></li>
                    <li class="nav-item"><a href="view_products.php" class="nav-link  ">Products</a></li>
                    <li class="nav-item"><a href="#Products-services" class="nav-link  ">Gallery</a></li>
                    <li class="nav-item"><a href="#Testimonials" class="nav-link  ">Testimonials</a></li>
                    <li class="nav-item"><a href="supportus.html" class="nav-link  ">Contact us</a></li>
                </ul>
            </div>
        </div>
    </nav>
    </header>
       <!-- navbar ends -->

    <!-- main content starts -->
    <div class="container-fluid p-4 transition-effect" >
        <div class="col">
        <!-- Tabs content -->
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade shadow rounded bg-white show active p-4" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <h3 class="display-4 text-center">Our Products</h3>
                    <br>
                    <div class="row row-cols-1 row-cols-md-3">
                    <?php
                        $mysqli = new mysqli('localhost', 'root', '', 'connect_roots');
                        $result = $mysqli->query("SELECT product_id, product_name, product_img, product_desc FROM products;");
                        while($row = $result->fetch_assoc()):
                    ?>
                        <div class="col mb-4">
                            <div class="card text-center" style="width: 300px;">
                            <img src="<?php echo 'img/product-images/'.$row['product_img'] ?>" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row['product_name'];?></h5>
                                <p class="card-text text-truncate"><?php echo $row['product_desc'];?></p>
                                <a href="product-profile.php?view=<?php echo $row['product_id']?>"><button class="btn btn-block btn-outline-info" type="button" onclick="">View Product</button></a>
                            </div>
                            </div>
                        </div>
                        <?php endwhile; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main content ends -->
    
    <!-- footer starts -->
    <footer>
    <section>
    <div class="sect-one footer-top">
        <div class="container-fluid  p-4" style="padding: 3em 1em;">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
                    <h2>ConnectRoots</h2>
                    <p>Brief info about the company.</p>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
                    <h2>Follow us</h2>
                    <p>Follow us on social media for the latest updates.</p>
                    <a  class="m-2" href="#"><i class="fab fa-facebook" style='font-size:22px'></i></a>
                    <a class="m-2" href="#"><i class="fab fa-instagram" style='font-size:24px'></i></a>
                    <a  class="m-2"href="#"><i class="fab fa-twitter" style='font-size:24px'></i></a>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
                    <h2>Contact Us</h2>
                    <!-- email id and phone no and address of the shop with google map embedded -->
                    <div class="m-2">
                        <i class="fas fa-phone-alt" style="font-size:21px"></i>
                        (+91)00000 00000
                    </div>
                    <div class="m-2">
                        <i class="fas fa-envelope" style="font-size:21px"></i>
                        no-reply@connectroots.in
                    </div>
                    <div class="m-2">
                        <i class="fas fa-map-marker-alt" style="font-size:21px"></i>
                        Shop No.: 03, Shivprasad Society, Dr Rajendra Prasad Road, opposite Rangoli Hotel, Tilak Nagar, Dombivli East, Maharashtra 421201
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3767.5540663821434!2d73.08975961442664!3d19.21466995259324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7952050d8307f%3A0x3f094b32f25e510e!2sConnectRoots!5e0!3m2!1sen!2sin!4v1594613826013!5m2!1sen!2sin" 
                     frameborder="0" style="border:0; width: inherit; height: 13em;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    </section>
    <section class="sect-two text-center">
    Developed by YB & ST
    </section>
    </footer>
    <!-- footer ends -->

</body>
</html>