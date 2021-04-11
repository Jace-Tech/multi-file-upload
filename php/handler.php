<?php

header("Access-Control-Allow-Origin: *");
require_once("./config.php");

// Check the request method
if ($_SERVER['REQUEST_METHOD'] === 'POST') :
    try {
        $destination = "../images/";
        $filenames = [];
        $random = rand(10000, 999999);

        // Loop through the files array 
        for ($i = 0; $i < count($_FILES['image']['name']); $i++) :
            $filename = $_FILES['image']['name'][$i];
            $ext = pathinfo($filename, PATHINFO_EXTENSION);

            $filename .= $random . '.' . $ext;
            $file = $_FILES['image']['tmp_name'][$i];

            // Move images to the `images` folder
            if (!move_uploaded_file($file, $destination . $filename)) throw new PDOException("Error processing file -> {$filename}", 1);

            // Add the filename to the filenames array
            array_push($filenames, $filename);
        endfor;

        // Insert the filenames array to the DB
        $query = "INSERT INTO `image`(`images`) VALUES (?)";
        $result = $connect->prepare($query);
        $result->execute([json_encode($filenames)]);

        // Check for error
        if (!$result) throw new PDOException("Error Inserting to DB", 1);

        // Redirect the user 
        header("location: ../index.php");
    } catch (PDOException $e) {

        // Display error message
        echo $e->getMessage();
    }
endif;
