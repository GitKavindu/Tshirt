<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
	// Get the form data
	$Shirt_name = $_POST["Shirt_name"];
	$Shirt_price = $_POST["Shirt_price"];

	// Get the image data
	$target_dir = "D:/Documents/php/project/uploads/";
	$target_file = $target_dir . basename($_FILES["Shirt_image"]["name"]);
    $uploadloc="uploads/".basename($_FILES["Shirt_image"]["name"]);
   
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	$allowed_extensions = array("jpg", "jpeg", "png", "gif");

	if (in_array($imageFileType, $allowed_extensions)) 
    {
		if (move_uploaded_file($_FILES["Shirt_image"]["tmp_name"], $target_file)) 
        {
			// Image uploaded successfully, now insert the data into the database
            require_once "./dbh.inc.php";
			$sql = "INSERT INTO product (Shirt_name, Shirt_image, Shirt_price) VALUES ('$Shirt_name', '$uploadloc', $Shirt_price)";

			if ($connection->query($sql) === TRUE) {
				echo "Product added successfully";
			} 
            else
            {
				echo "Error: " ;
            }
        }
    }
}
