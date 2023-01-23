<?php require_once "../controller/agenceController.php";

require_once "./header.php";
?>
<form method="post">
    <div class="mb-3">
        <label for="titre" class="form-label"></label>
        <input type="text" class="form-control" name="titre" placeholder="titre">
    </div>
    <div class="mb-3">
        <label for="adresse" class="form-label"></label>
        <input type="text" class="form-control" name="adresse" placeholder="adresse">
    </div>
    <div class="mb-3">
        <label for="ville" class="form-label"></label>
        <input type="text" class="form-control" name="ville" placeholder="ville">
    </div>
    <div class="mb-3">
        <label for="cp" class="form-label"></label>
        <input type="number" class="form-control" name="cp" placeholder="code postal">
    </div>
    <div class="mb-3">
        <label for="description" class="form-label"></label>
        <input type="text" class="form-control" name="description" placeholder="description">
    </div>
    <div class="mb-3">
        <label for="photo" class="form-label"></label>
        <input type="text" class="form-control" name="photo" placeholder="photo">
    </div>



    <button type="submit" class="btn btn-primary" value="valider_agence" name="valider_agence">Valider</button>
</form>

<table class="table">
    <thead>
        <tr>
            <th scope="col">Titre</th>
            <th scope="col">Adresse</th>
            <th scope="col">Ville</th>
            <th scope="col">Code postal</th>
            <th scope="col">Description</th>
            <th scope="col">Photo</th>
            <th scope="col">Action</th>
        </tr>
    </thead>

    <?php foreach ($arrayAgence as $values) : ?>
        <tbody>
            <tr>
                <td><?= $values['titre']; ?></td>
                <td><?= $values['adresse']; ?></td>
                <td><?= $values['ville']; ?></td>
                <td><?= $values['cp']; ?></td>
                <td><?= $values['description']; ?></td>
                <td> <img src="<?= $values['photo']; ?>" alt="" width="100" height="100"></td>
                <td>
                    <a href="?action=supprimer&id=<?= $values['id_agence'] ?>">Supprimer</a>
                    <a href="agenceUpdate.php?action=modifier&id=<?= $values['id_agence'] ?> ">Modifier</a>
                    <a href="agenceDetails.php?action=details&id=<?= $values['id_agence'] ?> ">Détails</a>
                </td>
            </tr>
        </tbody>
    <?php endforeach; ?>
</table>

</body>

</html>


<?php require_once "./footer.php"; ?>