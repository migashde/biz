<?php

  require_once "functions/loggedin.php";
  require_once "functions/db.php";

  $sql = 'SELECT * FROM article_cats';
  $cats = mysqli_query($connection, $sql);

?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Тест сайт</title>
  <link href="assets/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<header id="header">
  <div class="wrapper">
    <a class="logo" href="index.php">Miga's journal</a>
    <nav id="topnav" class="navbar">
      <?php
        if (mysqli_num_rows($cats)==0) {
          echo '
        <a class="nav-link" href="index.php">Нийтлэлүүд</a>';
        }
        else
        {
          while ($cat=mysqli_fetch_array($cats)) {
            echo '<a href="blog.php?cat='.$cat["id"].'">'.$cat["name"].'</a>';
          };
        }
      ?>
      <div class="sep">|</div>
      <?php if($loggedin == false):?>
      <a class="btn" href="login.php">нэвтрэх</a>
      <a class="btn" href="register.php">бүртгүүлэх</a>
      <?php else:?>
      <a class="btn" href="profile.php"><?php echo $_SESSION['login'];?></a>
      <a class="btn" href="functions/logout.php">гарах</a>
      <?php endif;?>

      <?php if($loggedin == true):?>
      <?php if($_SESSION['type'] == 'admin'):?>
      <a class="btn" href="admin">admin</a>
      <?php endif;?>
      <?php endif;?>

      <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
    </nav>
  </div>
</header>