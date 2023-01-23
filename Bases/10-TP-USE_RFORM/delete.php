<?php
require "index.php";
require "config.php";

$sql = "DELETE FROM users WHERE id_users =?";
$pdo->prepare($sql)->execute([$_GET["id_users"]]);

header("Location: redirect.php");
