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

    <!-- jQuery scripts -->
    <script type="text/javascript">
        $(document).ready(function() {
            var html = '<tr><td><input type="text" class="form-control" name="quantity[]" id="quantity"></td><td><input type="text" class="form-control" name="price[]" id="price"></td><td><input type="button" class="btn btn-danger" id="remove" name="remove" value="Remove"></td></tr>';
            
            var max_field = 5;
            var x = 1;
    
            $("#add").click(function(){
                if(x < max_field){
                    $("#table_field").append(html);
                    x++;
                }
            });

            $("#table_field").on('click','#remove',function(){
                $(this).closest('tr').remove();
                x--;
            });

        });
    </script>
</head>
<body>
    <div class="container-fluid">
        <h3 class="display-4">Add Products</h1>
        <?php require_once 'insert_product.php' ?>

        <?php 
            $mysqli = new mysqli('localhost', 'root', '', 'connect_roots') or die(mysqli_error($mysqli));
            $result = $mysqli->query("SELECT * FROM products GROUP BY product_name;") or die($mysqli->error);
        ?>

        <div class="container-fluid">
            <table class="table table-bordered" style="table-layout: fixed; width: 100%">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Link</th>
                        <th>Description</th>
                        <th>Features</th>
                        <th>Benefits</th>
                        <th colspan="2">Price according to Quantity</th>
                        <th colspan="2">Action</th>
                    </tr>
                </thead>
                <?php 
                    while($row = $result->fetch_assoc()):
                ?>
                <tr>
                    <td><img src="<?php echo 'img/product-images/'.$row['product_img'] ?>" width="90" height="90" alt=""> </td>
                    <td><?php echo $row['product_name'];?></td>
                    <td style="word-wrap: break-word"><?php echo $row['product_link'];?></td>
                    <td><?php echo $row['product_desc'];?></td>
                    <td><?php echo $row['features'];?></td>
                    <td><?php echo $row['benefits'];?></td>
                    <td colspan="2">
                        <a href="prod_price.php?view=<?php echo $row['product_id']; ?>"
                        class="btn btn-warning">View</a>
                    </td>
                    <td colspan="2">
                        <a href="insert_product.php?delete=<?php echo $row['product_id']; ?>" 
                        class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                    <?php endwhile; ?>
            </table>
        </div>
        


        <div class="row justify-content-center">
            <form action="add_products.php" method="post" enctype="multipart/form-data">
                <?php if (!empty($msg)): ?>
                    <div class="alert <?php echo $msg_class ?>" role="alert">
                <?php echo $msg;
                        unset($msg);
                        unset($msg_class); ?>
                    </div>
                <?php endif; ?>
                <div class="form-group row">
                    <label for="p_name" class="col-sm-2 col-form-label">Product Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="p_name" name="p_name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="p_img" class="col-sm-2 col-form-label">Product Image</label>
                    <div class="col-sm-10">
                        <input type="file" class="form-control" id="p_img" name="p_img">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="p_link" class="col-sm-2 col-form-label">Product Purchase Link</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="p_link" name="p_link">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="description" class="col-sm-2 col-form-label">Description</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="description" name="description"></textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="features" class="col-sm-2 col-form-label">Features</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="features" name="features"></textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="benefits" class="col-sm-2 col-form-label">Health Benefits</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="benefits" name="benefits"></textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Quantity</label>
                    <div class="col-sm-10">
                        <table class="table table-bordered" id="table_field">
                            <tr>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Add or Remove</th>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" name="quantity[]"></td>
                                <td><input type="text" class="form-control" name="price[]"></td>
                                <td><input type="button" class="btn btn-warning" value="Add" id="add" name="add"></button></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <center><button type="submit" class="btn btn-primary" name="save">Save</button></center>
            </form>
        </div>
    </div>
</body>




</html>