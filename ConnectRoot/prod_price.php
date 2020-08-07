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
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
    
    <link href="https://fonts.googleapis.com/css2?family=Muli:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <style>
       @media (max-width: 991.98px) {
           .m-4{
               margin: 0px !important;
           }
    
}
    </style>

    <title>Add Products</title>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
</script>
  <script type="text/javascript" src="script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    

<title>Product Pricing</title>
</head>
<body>
    <div class="container-fluid p-3">
        <h3 class="display-4">Product Pricing</h1>
    </div>
    <div class="container-fluid p-3">
        <a href="add_products.php"><button class="btn btn-success">Back</button></a>
    </div>
    <?php 
        $conn = mysqli_connect('localhost', 'root', '', 'connect_roots');
        if(isset($_GET['view'])) {
            $id = $_GET['view'];
            $sql = "SELECT qty, price, product_link FROM quantity WHERE product_id = '$id';";
            $result = mysqli_query($conn, $sql);
    ?>
    <div class="container-fluid">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Product Link</th>
                </tr>
                <?php 
                    while($row = $result->fetch_assoc()):
                ?>
                <tr>
                    <td><?php echo $row['qty'];?></td>
                    <td><?php echo $row['price'];?></td>
                    <td><?php echo $row['product_link'];?></td>
                </tr>
                    <?php endwhile; }?>
            </thead>
        </table>
    </div>
</body>
</html>