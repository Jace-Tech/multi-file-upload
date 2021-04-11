<?php include("./php/config.php"); ?>

<?php

$query = "SELECT * FROM `image`";
$result = $connect->prepare($query);

$result->execute();
$rows = $result->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Multiple-Image Upload</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <div class="container">
        <h2>Upload Images</h2>
        <form enctype="multipart/form-data" action="./php/handler.php" method="post">
            <input type="file" name="image[]" id="file" multiple="multiple" required />
            <button type="submit" id="btn">Upload</button>
        </form>
        <hr />
        <h3>Images</h3>
        <?php foreach ($rows as $row) : $images = json_decode($row['images']); ?>
            <div class="image-wrapper">
                <?php foreach ($images as $image) : ?>
                    <div class="image-container">
                        <img src="./images/<?= $image; ?>" alt="" />
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endforeach; ?>
    </div>
    <a class="btn" target="_blank" rel="noopener" href="https://facebook.com/chidindu.aneke">
        &starf;
    </a>
</body>

</html>