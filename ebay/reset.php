<?php include("header.php");
display_message(); 
password_reset();  
include("menu.php");?>

    

    <div class="body-content">

        <center><form id="reset-form" method="post" role="form" autocomplete="off">
            <h3>Réinitialiser votre Mot de Passe</h3>
           
            <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="New Password" required> 
           
            <input type="password" name="confirm_password" id="confirm_password" tabindex="2" class="form-control" placeholder="Confirm New Password" required> 
  
            <button type="submit" class="btn btn-success" name="reset-password-submit" id="recover-submit">Reset Password</button>

            <input type="hidden" class="hide" name="token" value="<?php echo token_generator();    ?>">
        </form></center>
    </div>

   
	


    </body>

    <?php include("footer/footer.php");   ?>

</html>