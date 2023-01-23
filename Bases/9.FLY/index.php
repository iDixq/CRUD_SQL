<?php

require_once("config.php");

$request = $database->prepare("SELECT prenom FROM abonne");
$request->execute();
$result = $request->fetchAll(PDO::FETCH_ASSOC);

$request2 = $database->prepare("SELECT auteur, titre FROM livre");
$request2->execute();
$result2 = $request2->fetchAll(PDO::FETCH_ASSOC);

echo "<pre>";
print_r($result);
echo "</pre>";


?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLY</title>
</head>

<body>

    <header>
        <h1>BIBLIOTHEQUE 🐱‍💻</h1>
    </header>

    <table style="border:2px solid">
        <thead style="border:2px solid">
            <tr>
                <th>Abonne </th>
            </tr>
        </thead>

        <?php foreach ($result as $values) { ?>

            <tr>
                <td><?php echo $values["prenom"]; ?></td>
            </tr> <!-- ont peut aussi mettre ( < ?= ) pour remplacer le echo -->

        <?php } ?>



    </table>

    <table style="border:2px solid">
        <thead style="border:2px solid">
            <tr>
                <th>Auteur </th>
                <th>Titre</th>
            </tr>



        </thead>

        <?php foreach ($result2 as $values) { ?>

            <tr>
                <td><?php echo $values["auteur"]; ?></td>
                <td><?php echo $values["titre"]; ?></td>
            </tr> <!-- ont peut aussi mettre ( < ?= ) pour remplacer le echo -->


        <?php } ?>

</body>



</table>


</html>