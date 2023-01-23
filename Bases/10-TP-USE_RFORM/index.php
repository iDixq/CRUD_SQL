<?php

require "config.php";

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP-10</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>

<body>



    <form action="#" method="post">
        <div class="container justify-content-center mt-5">
            <div class="input-group mb-3">
                <span class="input-group-text">Nom et Prénom :</span>
                <input type="text" aria-label="Nom :" class="form-control" name="nom" id="nom">
                <input type="text" aria-label="Prénom :" class="form-control" name="prenom" id="prenom">
            </div>
            <div class="mb-3">
                <label for="pass1" class="form-label">Mot de passe :</label>
                <input type="password" class="form-control" name="pass1" id="pass1">
            </div>
            <div class="mb-3">
                <label for="pass2" class="form-label">Confirmation du mot de passe :</label>
                <input type="password" class="form-control" name="pass2" id="pass2">
            </div>

            <button type="submit" class="btn btn-primary" value="submit" name="submit">Envoyer</button>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">id_users</th>
                        <th scope="col">Nom</th>
                        <th scope="col">Prénom</th>
                        <th scope="col">MDP</th>
                        <th scope="col">Confirmation MDP</th>
                        <td><a href="deleteALL.php" class="btn btn-dark" name="suppr" id="suppr">DELETE ALL</a></td>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($users as $user) { ?>
                        <tr>
                            <th scope="row"><?php echo $user["id_users"];  ?></th>
                            <td><?php echo $user["nom"]; ?></td>
                            <td><?php echo $user["prenom"]; ?></td>
                            <td><?php echo $user["pass1"]; ?></td>
                            <td><?php echo $user["pass2"]; ?></td>
                            <td><a href="delete.php?id_users=<?php echo $user["id_users"]; ?>" class="btn btn-danger" name="suppr" id="suppr">Supprimer</a></td>
                        </tr>
                    <?php } ?>
                </tbody>

            </table>

        </div>
    </form>








    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>