<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="./img/MNHS.png" type="image/x-icon" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="./bootstrap-5.2.1-dist/css/bootstrap.css" />
    <title>Mababangbaybay National High School</title>
    </head>
        
<body>
    <div class="nav">
      <?php  include 'navbar.php'; ?>
    </div>
    <div class="container">
        <?php
            include '../db.php';
            include 'sidebar.html';
        ?>
    </div>
    
</body>
</html>