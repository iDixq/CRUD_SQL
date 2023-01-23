<?php
require "index.php";

$sql = "DELETE FROM employes WHERE id_employes = ?";
$pdo->prepare($sql)->execute([$_GET["id_employes"]]);

header('Location: redirect.php');
