<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Muli:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>Product Info</title>
    <link rel="stylesheet" href="master.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <style>
        .card-header{
            padding: 0em 0em 0.1em 0em;
            background-color:#4bc8a2 ;
        }
        .btn:focus {
  box-shadow: none;
}
        .product{
            height: inherit;
            width: inherit;
        }
        

        body{
            padding-top: 50px;
            background-color: whitesmoke;
            font-family: muli;
            
        }

        .nav-link{
            
            color: skyblue !important;
        }

        img {
            width: 100%;
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
    
</head>
<body>

    <!-- navbar -->
    <header class="header">
      <!-- navbar start -->
          <nav class="navbar-scroll navbar navbar-expand-lg fixed-top ">
              <div class="container-fluid ">
                  <a href="#" class="navbar-brand text-uppercase" >
                      <img src="img/Brand_Logo.png" alt="" class="logo">
                      ConnectRoots
                  </a>
                  <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><i class="fa fa-bars"></i></button>
                  
                  <div id="navbarSupportedContent" class="collapse navbar-collapse">
                      <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="index2.html" class="nav-link  ">Home <span class="sr-only">(current)</span></a></li>
                        <li class="nav-item"><a href="#Products-services" class="nav-link  ">Gallery</a></li>
                        <li class="nav-item"><a href="product.html" class="nav-link  ">Product</a></li>
                        <li class="nav-item"><a href="aboutus.html" class="nav-link  ">About</a></li>
                        <li class="nav-item"><a href="supportus.html" class="nav-link  ">Contact</a></li>
                      </ul>
                  </div>
              </div>
          </nav>
      <!-- navbar ends -->
      </header>




    <!-- product  -->

    <?php 
        $conn = mysqli_connect('localhost', 'root', '', 'connect_roots');
        if(isset($_GET['view'])) {
            $id = $_GET['view'];
            $sql = "SELECT * FROM products WHERE products.product_id = '$id';";
            $result = mysqli_query($conn, $sql);   
    ?>
    <section class="py-5 header">
        <div class="container ">
    
          
               
    
    
                <div class="col">
                    <!-- Tabs content -->
                    <div class="tab-content " id="v-pills-tabContent">
                        <div class="tab-pane fade shadow rounded bg-white show active p-5 transition-effect" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <?php 
                                while($row = $result->fetch_assoc()):
                            ?>
                            <div class="row">
                                <div class="col-md-6"> 
                                <img src="<?php echo 'img/product-images/'.$row['product_img'] ?>" alt="">

                                </div>
                                    <div class="col-md-6">
                                        <h4 class="font-italic mb-4"><?php echo $row['product_name'];?></h4>
                                        <div class="bg-light row d-flex justify-content-around text-center">
                                            <div class=" flex-column   ">
                                                <div class="col-md-4 "><p class="text-monospace bar " >Available:</p></div>
                                                <?php 
                                                    $query = "SELECT qty, price FROM quantity WHERE product_id='$id';";
                                                    $res = mysqli_query($conn, $query);
                                                    
                                                    $qty = array();
                                                    $price = array();

                                                    while($row_1 = mysqli_fetch_assoc($res)) {
                                                        array_push($qty, $row_1['qty']);
                                                        array_push($price, $row_1['price']);
                                                    }

                                                    foreach($qty as $element):
                                                 ?>
                                                <div class="col-md-4"><p><?php echo $element?></p></div>
                                                    <?php endforeach;?>
                                                

                                            </div>
                                            <div class="flex-column ">
                                                <div class="col-md-4"><p class="text-monospace bar ">Price:</p></div>
                                                <?php 
                                                    foreach($price as $element):
                                                ?>
                                                <div class="col-md-4"><p><?php echo $element?></p></div>
                                                    <?php endforeach;?>
                                                

                                            </div>
                                    </div>
                                    
                                    <div class="container">
                                      <div class="row d-flex justify-content-center">
                                        <div class="col-md-8 ">
                                          
                                          <a href="<?php echo $row['product_link'];?>"><button class="btn btn-block btn-outline-info" type="button" onclick=""><img style="width: 1.5em; color: coral;" src="img/icons/amazon-yellow.png"/> Shop on  Amazon  </button></a>
                                        </div>
                                      
                                       
                                      </div>
                                    </div>
                              

                                 <div class="description">
                                   <div class="des-title">
                                    <hr>
                                     <p class="bar"> Description</p>
                                   </div>
                                   <div>
                                     <p class="font-weight-light"><?php echo $row['product_desc'];?></p>
                                   </div>
                                 </div>
                                 <div class="description">
                                  <div class="des-title">
                                   <hr>
                                    <p class="bar"> Features</p>
                                  </div>
                                  <div>
                                    <p class="font-weight-light"><?php echo $row['features'];?></p>
                                  </div>
                                </div>
                               
                                <div class="description">
                                  <div class="des-title">
                                    <hr>
                                    <p class="bar"> Health+</p>
                                  </div>
                                  <div>
                                    <p class="font-weight-light"><?php echo $row['benefits'];?></p>
                                  </div>
                                </div>
                            
                                <?php endwhile; }?>



                                </div>
                               



                            </div>
                              </div>
                        
                    </div>
                </div>
            </div>
       
    </section>
    






    <!-- footer -->

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
    <section class="sect-two">
        <center class="">Copyright@ ...</center> 
    </section>
</footer>
  
<!-- footer End -->



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
     <script type="text/javascript" src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
 
</body>
</html>