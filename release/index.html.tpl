<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bucklescript TEA Starter Kit</title>
    <script src="main.js"></script>
    <script>
      var fn = function() {
        setTimeout(function() {
          const root = document.body;
          const hydrate = root.children.length > 0;
          var data = Array.from({ length: 1000 }, (_, idx) => "Lorem ipsum " + idx);
          var app = starter.main(root, data, hydrate);
        }, 1);
      };
 
      window.addEventListener('load', fn, false );
    </script>
  </head>

  <body></body>
</html>
