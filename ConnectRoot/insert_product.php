<?php

$msg = "";
$msg_class = "";
$p_name = "";
$p_img = "";
$p_link = "";
$desc = "";
$features = "";
$benefits = "";
$quantity = array();
$price = array();
$change = "";

$conn = mysqli_connect("localhost", "root", "", "connect_roots");

if (isset($_POST['save'])){
    $p_name = $_POST['p_name'];
    $p_link = $_POST['p_link'];
    $desc = $_POST['description'];
    $features = $_POST['features'];
    $benefits = $_POST['benefits'];
    $p_img = $_FILES["p_img"]["name"];

    // values of the quantity table
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];

    // for image upload set target directory
    $target_dir = "img/product-images/";
    $target_file = $target_dir.basename($p_img);

    // Validate image size. Size should not be greater than 500kb
    if($_FILES["p_img"]["size"] > 500000) {
        $msg = "Image size should not be greater than 500kb";
        $msg_class = "alert-danger";
    }

    // check if file exists
    if (file_exists($target_file)) {
        $msg = "File already exists";
        $msg_class = "alert-warning";
    }

    // Upload image only if no errors
    
    if (empty($error)) {
        if(move_uploaded_file($_FILES["p_img"]["tmp_name"], $target_file)) {
            $sql = "INSERT INTO products (product_name, product_link, product_desc, features, benefits, product_img) VALUES('$p_name', '$p_link', '$desc', '$features', '$benefits', '$p_img')";
            
            if(mysqli_query($conn, $sql)) {
                $product_id = $conn->insert_id; 
            
                if (is_array($quantity)) {
                    foreach ($quantity as $key => $value) {
                        $sql = "INSERT INTO quantity (qty, price, product_id) VALUES ('$value', '$price[$key]', '$product_id');";
                        mysqli_query($conn, $sql);
                    }
                } else {
                    $msg = "Not an array!";
                    $msg_class ="alert-danger";
                }
                
                $msg = "Product uploaded and stored into database";
                $msg_class = "alert-success";
            } else {
                $msg = "There was an error in the database";
                $msg_class = "alert-danger";
            }
        } else {
            $error = "There was an error uploading the file";
            $msg = "alert-danger";
        }
    }

}

if(isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $sql = "DELETE FROM products WHERE product_id= '$id';";

    if (mysqli_query($conn, $sql)) {
        $msg = "Product has been deleted from database";
        $msg_class = "alert-danger";
    }
}

?>