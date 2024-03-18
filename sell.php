<?php
session_start();
                if(!isset($_SESSION["user_email"]))
                {
					header("location: ./index.php");
                }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Add Product</title>
	<link rel="stylesheet" href="Styles/sellStyle.css">
	<script src="script.js"></script>
</head>
<body>
  
	<h3 class="title2">Add your product</h3>
	<form method="POST" action="includes/add_product.php" enctype="multipart/form-data">
		<label for="Shirt_name">Shirt Name:</label><br>
		<input type="text" id="Shirt_name" name="Shirt_name"><br>

		<label for="Shirt_image">Shirt Image:</label><br>
		<input type="file" id="Shirt_image" name="Shirt_image"><br>

		<label for="Shirt_price">Shirt Price:</label><br>
		<input type="number" id="Shirt_price" name="Shirt_price"><br>

		<input type="submit" value="Add Product">
	</form>
</body>
</html>
