<?php include("header.php");
include("menu.php"); 

if(!logged_in())
{
    redirect("login.php");    
}



$email = $_SESSION['email'];

$sql = "SELECT * FROM panier WHERE user = '$email' AND vendu='0'";

echo "<h4>&nbsp&nbsp&nbspMON PANIER</h4>";

panier_item($con, $sql);

$sql1 = mysqli_query($con, "SELECT SUM(prix) FROM panier WHERE user = '$email' AND vendu='0'");
$row = mysqli_fetch_row($sql1); 
$total = $row[0];

?>
<center>
<?php if($total > 0) : ?>
<br><br><h4>Total : <?php echo number_format($total, 2, ',', ' '); ?> €</h4>
<br>
<form action="achat.php?total=<?php echo $total; ?>" method="POST">
    <input type="submit" class="btn btn-dark" name="acheter_maintenant" value="Acheter Maintenant">
</form></center>
<?php else: ?>
<h5>Le Panier est vide !</h5>
<?php endif; 

include("footer/footer.php"); ?>