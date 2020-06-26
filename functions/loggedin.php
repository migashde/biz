<?php
  ob_start();
    require_once "db.php";

    session_start();
    global $loggedin;
    if(!isset($_SESSION['login']) || empty($_SESSION['login'])){
      $loggedin = false;
    } else {
      $loggedin = true;
    }
  
?>