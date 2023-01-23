<?php


$pdo = new PDO("mysql:host=localhost;dbname=message", "root", "");
$recupusers = $pdo->query("SELECT * FROM users");
$users = $recupusers->fetchAll();

if (isset($_POST["submit"])) {
    var_dump($_POST);
    $errors = false;

    if (empty($_POST["nom"])) {
        echo "<h2>Erreur : le champ (nom) est vide !</h2>";
        $errors = true;
    } else {

        $nom = $_POST["nom"];
        echo "<h2>Votre nom est : " . $nom . "</h2><br>";
    }

    if (empty($_POST["prenom"])) {
        echo "<h2>Erreur : le champ (prenom) est vide !</h2>";
        $errors = true;
    } else {

        $prenom = $_POST["prenom"];
        echo "<h2>Votre prenom est : " . $prenom . "</h2><br>";
    }

    if (empty($_POST["pass1"]) || (empty($_POST["pass2"]))) {
        echo "<h2>Erreur : le champ (mot de passe) est vide !</h2>";
        $errors = true;
    } elseif ($_POST["pass1"] !== $_POST["pass2"]) {

        echo "<h2>Erreur ! Les mots de passes ne correspondent pas !</h2>";
        $errors = true;
    } else {
        $pass = $_POST["pass1"];
        $pass2 = $_POST["pass2"];
    }



    if ($errors === false) {
        var_dump($_POST);
        // On insere dans la BDD
        $sql = "INSERT INTO users (id_users, nom, prenom, pass1, pass2) VALUES (null,?,?,?,?)";
        $requete = $pdo->prepare($sql)->execute([$_POST['nom'], $_POST['prenom'], $pass, $pass2]);
        header("Location: redirect.php");
    } else {
        echo "Une ou des erreurs ont été rencontrées";
    }
} else {
    echo "<div class='container justify-content-center mt-5'>Veuillez remplir les champs indiqués</div>";
}
