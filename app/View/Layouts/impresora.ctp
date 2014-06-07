<!DOCTYPE html>
<html>
  <head>
    <style>
    body {
        height: 842px;
        width: 595px;
        /* to centre page on screen*/
        margin-left: auto;
        margin-right: auto;
        font-family: 'Arial';
    }
    </style>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <head>
  <body>
      <?php echo $this->fetch('content'); ?>
  </body>
</html>