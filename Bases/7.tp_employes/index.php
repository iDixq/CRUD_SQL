<?php
require "global.php";
require "config.php";

$sql = "SELECT * FROM employes";

$requete = $pdo->query($sql);

$employes = $requete->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>

<body>

    <table class="table">

        <thead>

            <tr>
                <th scope="col">id_employe</th>
                <th scope="col">nom</th>
                <th scope="col">prenom</th>
                <th scope="col">sexe</th>
                <th scope="col">service</th>
                <th scope="col">date_embauche</th>
                <th scope="col">salaire</th>


            </tr>
        </thead>

        <tbody>
            <?php foreach ($employes as $employe) { ?>
                <tr>
                    <th scope="row"><?php echo $employe["id_employes"];  ?></th>
                    <td><?php echo $employe["nom"]; ?></td>
                    <td><?php echo $employe["prenom"]; ?></td>
                    <td><?php echo $employe["sexe"]; ?></td>
                    <td><?php echo $employe["service"]; ?></td>
                    <td><?php echo $employe["date_embauche"]; ?></td>
                    <td><?php echo $employe["salaire"]; ?></td>

                    <td><a href="delete.php?id_employes=<?php echo $employe["id_employes"]; ?>" class="btn btn-danger" name="suppr" id="suppr">Supprimer</a></td>

                </tr>
            <?php } ?>
        </tbody>

    </table>



</body>

</html>