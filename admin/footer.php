  <!-- Footer-->
    <footer id="footer">
        <span class="pull-right">
            Welcome Miga's Journal
        </span>
        Miga's Journal 2020-<?php echo date("Y"); ?>
    </footer>
<script>

    $(function () {

        $('.summernote').summernote({
            toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
    ['font', ['strikethrough', 'superscript', 'subscript']],
    ['fontsize', ['fontsize']],
    ['color', ['color']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['height', ['height']]
            ]
        });


    });

</script>  
</body>
</html>