<?php
   session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My eCommerce Website</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <div class="container">
      <h1 align="center">T-Shirt selling Website</h1>
      <nav>
        <ul>
          
          <li><a href="#"><?php  if(isset($_SESSION["user_email"])){
              $username= $_SESSION["user_email"];
              echo $username;
             }?></a></li>
          <li><a href="sell.php">Add a Shirt</a></li>
          <li><a href="cart.php">Buy a shirt</a></li>
          <li><a href="<?php  if(!isset($_SESSION["user_email"]))
                {
                  echo "index.php";
                }
                else
                {
                  echo "includes/logout.inc.php";
                }
          ?>">
          <?php  if(isset($_SESSION["user_email"]))
                {
                  echo "Logout";
                }
                else
                {
                  echo "Login";
                }
          ?>
          </a></li>
        </ul>
        
      </nav>
    </div>
  </header>
  <main>
    <section class="hero">
      <div class="container">
        
        <p>Find the perfect t-shirt for you or create your own design to sell!</p>
        <a href="#" class="btn">Shop Now</a>
      </div>
    </section>

    <section class="sell">
      <div class="container" align="center">
        <h2>Sell Your Own Design</h2>
        <p>Join our community of designers and start selling your own t-shirt designs today!</p>
        <a href="#" class="sell">Start Selling today onwards</a>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <p>&copy; 2023 T-Shirt selling Website</p>
    </div>
  </footer>

  <script src="app.js"></script>
</body
