<?php
require "index.php";
require "config.php";

$sql = "DELETE FROM users WHERE id_users>0";
$pdo->prepare($sql)->execute([$_POST["id_users"]]);

header("Location: redirect.php");
