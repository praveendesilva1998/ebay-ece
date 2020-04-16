<?php include("header.php");
include("menu.php");

$email = $_SESSION['email'];

if(isset($_GET['id']))
{
    $id = $_GET['id'];
}


create_item($con, $id); 

include("footer/footer.php");    
?>
