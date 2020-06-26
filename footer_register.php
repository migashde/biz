<footer class="site-footer bg-darkest" role="contentinfo">
    <div class="container">

      <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link" href="index.php">Эхлэл</a>
        </li>
      </ul>
      <div class="copy">
        &copy; Miga's journal <?php echo date("Y"); ?><br />
        All rights reserved
      </div>
    </div>
  </footer>
<script>
  $("#regform").submit(function(e) {
    var txt = "";
    if (document.getElementById("phonen").validity.rangeOverflow) {
      txt = "Зөв дугаар оруулна уу";
    }
    document.getElementById("phonem").innerHTML = txt;
  }
  </script>
  <script src="dist/js/bundle.js"></script>
  
</body>
</html>