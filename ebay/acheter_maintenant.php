<?php include("header.php");
include("menu.php");

$sql = "SELECT * FROM item WHERE typeVente = 'acheter maintenant'";

display_item($con, $sql);

include("footer/footer.php"); ?>