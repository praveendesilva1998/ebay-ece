<?php include("header.php");
include("menu.php");

if(isset($_GET['id']))
{
    $id = $_GET['id'];
}


create_item($con, $id); 

include("footer/footer.php");    
?>
