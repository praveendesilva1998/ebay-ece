<?php include("header.php");
include("menu.php");


if(isset($_GET['id']))
{
    $id = $_GET['id'];
}

if(isset($_GET['item_id']))
{
    $id = $_GET['item_id'];
}


create_item($con, $id); 

include("footer/footer.php");    
?>
