<?php

  require_once "functions/loggedin.php";
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Тест сайт</title>
  <link href="../assets/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
<header id="header">
  <div class="wrapper">
    <a class="logo" href="index.php">Miga's journal</a>
    <nav id="topnav" class="navbar">
      <a href="index.php">Нийтлэлүүд</a>
      <a href="cats.php">Ангилалууд</a>
      <a href="users.php">Хэрэглэгчид</a>
      <a href="profs.php">Ажил мэргэжлүүд</a>
      <div class="sep">|</div>

      <a class="btn" href="/test/admin">admin</a>
      <a class="btn" href="/test">сайт үзэх</a>

      <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
    </nav>
  </div>
</header>