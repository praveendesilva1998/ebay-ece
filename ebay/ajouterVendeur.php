<?php 
include("header.php");
include("menu.php");

if(!logged_in_admin())
{
    redirect("adminLogin.php");
}
if(logged_in())
{
    redirect("logout.php");
    redirect("adminLogin.php");
}
?>

<h4>&nbsp&nbsp&nbsp Ajouter un Vendeur</h4><br>

<div class="body-content">
            

    <center><form id="ajouter-item-form" method="post" role="form" enctype="multipart/form-data">

        Photo de Profil : <input type="file" name="fileToUpload" id="fileToUpload" required><br><br>

        <div class="form-group">
            <input type="text" name="nom" id="nom" class="form-control" placeholder="Nom" required>
        </div>

        <div class="form-group">
            <input type="text" name="pseudo" id="pseudo" class="form-control" placeholder="Pseudo" required>
        </div>

        <div class="form-group">
            <input type="email" name="email" id="email" class="form-control" placeholder="Email" required>
        </div>

        <div class="form-group">
            <input type="number" name="fond" id="fond" class="form-control" placeholder="Fond" required>
        </div>

        <button type="submit" class="btn btn-primary" name="ajouter-vendeur" id="register-submit">ENREGISTRER</button>

    </form></center><br><br>
</div>




<?php include("footer/footer.php");



?>