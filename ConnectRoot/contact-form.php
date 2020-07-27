<?php
$msg = "";
$msg_class = "";
if(isset($_POST['submit'])) {
    $name = $_POST['name'];
    $emailFrom = $_POST['email'];
    $message = $_POST['message'];
    $subject = "Message from Connect Roots";

    $mailTo = "panacea@connectroots.in";
    $headers = "From: ".$emailFrom;
    $txt = "You have received an email from".$name.".\n\n".$message;

    mail($mailTo, $subject, $txt, $headers);
    
    $msg = "We have successfully received your email.";
    $msg_class = "alert-success";
}
?>