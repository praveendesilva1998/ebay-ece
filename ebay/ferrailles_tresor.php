<?php include("header.php");
include("menu.php");


$sql = "SELECT * FROM item WHERE Categorie = 'ferrailles ou tresor' GROUP BY ID DESC";

display_item($con, $sql); ?>





<?php include("footer/footer.php"); ?>