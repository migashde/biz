<?php

  require_once "functions/loggedin.php";
  require_once "functions/db.php";

  $sql = 'SELECT * FROM article_cats';
  $cats = mysqli_query($connection, $sql);

?>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Тест сайт</title>
  <link href="dist/css/milo.css" rel="stylesheet">
</head>
<body>
  <header role="banner">
    <nav class="navbar navbar-expand-md navbar-light bg-white absolute-top">
      <div class="container">

        <button class="navbar-toggler order-2 order-md-1" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse order-3 order-md-2" id="navbar">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown active">
              <a class="nav-link" href="/test/index.php">Эхлэл</a>
            </li>
            <?php
              if (mysqli_num_rows($cats)==0) {
                echo '<li class="nav-item">
              <a class="nav-link" href="#">Нийтлэлүүд</a></li>';
              }
              else
              {
                echo '<li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Нийтлэлүүд</a><div class="dropdown-menu" aria-labelledby="dropdown02">';
                while ($cat=mysqli_fetch_array($cats)) {
                  echo '<a class="dropdown-item" href="blog.php?cat='.$cat["id"].'">'.$cat["name"].'</a>';
                }
                echo '</div></li>';
              }
            ?>
          </ul>
        </div>

        <a class="navbar-brand mx-auto order-1 order-md-3" href="index.php">Miga's journal</a>

        <div class="collapse navbar-collapse order-4 order-md-4" id="navbar">
          <ul class="navbar-nav ml-auto">
            <?php if($loggedin == false):?>
            <li class="nav-item">
              <a class="nav-link btn btn-light" href="login.php">Нэвтрэх</a>
            </li>
            <li class="nav-item"></li>
            <li class="nav-item">
              <a class="nav-link btn btn-light" href="register.php" style="margin-left: 10px;">Бүртгүүлэх</a>
            </li>
            <?php else:?>
              <li class="nav-item"><a class="nav-link btn btn-disabled" href="profile.php"><?php echo $_SESSION['login'];?></a></li>
              <li class="nav-item"><a class="nav-link btn btn-light" href="functions/logout.php" style="margin-left: 10px;">Гарах</a></li>
            <?php endif;?>
          </ul>
        </div>
      </div>
    </nav>
  </header>