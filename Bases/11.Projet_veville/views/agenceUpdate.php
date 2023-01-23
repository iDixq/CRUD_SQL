<?php require_once "../controller/agenceController.php";

require_once "./header.php";
?>


<form method="post" class="w-50">
    <div class="mb-3">
        <label for="id" class="form-label"></label>
        <input type="hidden" class="form-control" name="id_agence" value="<?= $agenceDetails["id_agence"] ?>">
    </div>
    <div class="mb-3">
        <label for="titre" class="form-label"></label>
        <input type="text" class="form-control" name="titre" value="<?= $agenceDetails["titre"] ?>">
    </div>
    <div class="mb-3">
        <label for="adresse" class="form-label"></label>
        <input type="text" class="form-control" name="adresse" value="<?= $agenceDetails["adresse"] ?>">
    </div>
    <div class="mb-3">
        <label for="ville" class="form-label"></label>
        <input type="text" class="form-control" name="ville" value="<?= $agenceDetails["ville"] ?>">
    </div>
    <div class="mb-3">
        <label for="cp" class="form-label"></label>
        <input type="number" class="form-control" name="cp" value="<?= $agenceDetails["cp"] ?>">
    </div>
    <div class="mb-3">
        <label for="description" class="form-label"></label>
        <input type="text" class="form-control" name="description" value="<?= $agenceDetails["description"] ?>">
    </div>
    <div class="mb-3">
        <label for="photo" class="form-label"></label>
        <input type="text" class="form-control" name="photo" value="<?= $agenceDetails["photo"] ?>">
    </div>

    <button type="submit" class="btn btn-primary" name="valider_agence_update">Valider</button>


</form>



<div class="card w-50" style="width: 18rem;">
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