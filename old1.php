<?php

  require_once "functions/db.php";

  $sql = 'SELECT * FROM articles ORDER BY id DESC';
  $query = mysqli_query($connection, $sql);

?>
<!doctype html>
<?php 
  include("header.php");
?>

  <main class="main pt-4" role="main">

    <div class="intro">
      <div class="container-fluid">
        <div class="row">
           <?php
        if (mysqli_num_rows($query)==0) {
          echo "<b style='color:brown;'>Уучлаарай одоогоор нийтлэл алга байна. Та дараа дахин шалгана уу! </b> <br><br>";
        }
        else
        {
          while ($row=mysqli_fetch_array($query)) {
            $sql4 = 'SELECT * FROM article_cats WHERE id = '.$row['cat_id'].'';
          $query4 = mysqli_query($connection, $sql4);

            $str = $row["content"];
            $str = wordwrap($str, 28);
            $str = explode("\n", $str);
            $str = $str[0] . '...';
            echo '<div class="col-md-4">
            <a class="intro-block active" href="article.php?id='.$row["id"].'" style="background-image:url(/test/uploads/images/image_'.$row["media"].')">
              <div class="intro-block-inner">
                <time class="timeago" datetime="'.$row["created_date"].'">'.$row["created_date"].'</time>
                <h2>'.$row["title"].'</h2>
              </div>
            </a>
          </div>';
          }
        }
        ?>

        </div>
      </div>
    </div>
  </main>
