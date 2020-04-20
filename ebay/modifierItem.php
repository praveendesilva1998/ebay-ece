<?php include("header.php");
include("menu.php");

if(!logged_in_admin())
{
    redirect("adminLogin.php");
}
if(logged_in())
{
    redirect("logout.php");
}

$sql = "SELECT * FROM item GROUP BY ID DESC";

affichage_item($con, $sql);

include("footer/footer.php");



?>