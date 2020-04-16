<?php

public function create_item()
{
    $str = "";
    $sql = mysqli_query($this->con, "SELECT * FROM item");

    if(mysqli_num_rows($sql) > 0)
    {

        while($row = mysqli_fetch_array($data_query))
        {
            $id = $row['ID'];
            $titre = $row['Nom'];
            $image = $row['Image1'];
            $prix = $row["Prix"];
            $categorie = $row['Categorie'];
            $description = $row['Description']; 

            $date_time_now = date("Y-m-d H:i:s");
            $start_date = new DateTime($date_time);
            $end_date = new DateTime($date_time_now);
            $interval = $start_date->diff($end_date);
            
            if($interval->y >= 1)
            {
                if($interval == 1)
                {
                    $time_message = "Il y a ". $interval->y . " an";
                }
                else
                {
                    $time_message = "Il y a ". $interval->y . " ans";	
                }
            }
            else if($interval->m >= 1)
            {
                if($interval->d == 0)
                {
                    $days = "";
                }
                else if($interval->d == 1)
                {
                    $days = "Il y a ". $interval->d . " jour";	
                }
                else
                {
                    $days = "Il y a ". $interval->d . " jours";	
                }

                if($interval->m == 1)
                {
                    $time_message = "Il y a ". $interval->m . " mois". $days;
                }
                else
                {
                    $time_message = "Il y a ". $interval->m . " mois". $days;	
                }
            }
            else if($interval->d >= 1)
            {
                if($interval->d == 1)
                {
                    $time_message = "Hier";
                }
                else
                {
                    $time_message = "Il y a ". $interval->d . " jours";	
                }
            }
            else if($interval->h >= 1)
            {
                if($interval->h == 1)
                {
                    $time_message = "Il y a ". $interval->h . " heure";	
                }
                else
                {
                    $time_message = "Il y a ". $interval->h . " heures";	
                }
            }
            else if($interval->i >= 1)
            {
                if($interval->i == 1)
                {
                    $time_message = "Il y a ". $interval->i . " minute";
                }
                else
                {
                    $time_message = "Il y a ". $interval->i . " minutes";	
                }
            }
            else
            {
                if($interval->s < 30)
                {
                    $time_message = "Maintenant";
                }
                else
                {
                    $time_message = "Il y a ". $interval->s . " secondes";	
                }
            }


            $str .= "$titre $prix $categorie $description $image";

}










?>