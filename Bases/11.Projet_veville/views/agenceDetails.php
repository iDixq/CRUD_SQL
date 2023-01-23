<?php require_once "../controller/agenceController.php";

require_once "./header.php";
?>


<div class="card" style="width: 18rem;">
    <img src="<?= $agenceDetails["photo"] ?>" class="card-img-top" alt="<?= $agenceDetails["description"] ?>">
    <div class="card-body">
        <h5 class="card-title"><?= $agenceDetails["titre"] ?></h5>
        <p class="card-text"><?= $agenceDetails["description"] ?></p>


        <ul class="list-group list-group-flush">
            <li class="list-group-item"><?= $agenceDetails["adresse"] ?></li>
            <li class="list-group-item"><?= $agenceDetails["ville"] ?></li>
            <li class="list-group-item"><?= $agenceDetails["cp"] ?></li>
        </ul>

    </div>
</div>

<?php require_once "./footer.php"; ?>