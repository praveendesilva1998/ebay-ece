<?php include("header.php");
include("menu.php"); 

if(logged_in())
{
    $email = $_SESSION['email'];

    $sql = "SELECT * FROM panier WHERE user = '$email'";

    echo "<h4>MON PANIER</h4>";
    
    panier_item($con, $sql);
    
}
else
{
    redirect("login.php");
}




include("footer/footer.php"); ?>