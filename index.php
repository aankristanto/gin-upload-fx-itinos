<?php
include_once('koneksi.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UPLOAD EXCEL TO SQL SERVER</title>
    <link rel="stylesheet" href="assets/css/materialize.min.css">
    <style>
    /* fallback */
    @font-face {
    font-family: 'Material Icons';
    font-style: normal;
    font-weight: 400;
    src: url('assets/fonts/material-icons.woff2') format('woff2');
    }

    .material-icons {
    font-family: 'Material Icons';
    font-weight: normal;
    font-style: normal;
    font-size: 24px;
    line-height: 1;
    letter-spacing: normal;
    text-transform: none;
    display: inline-block;
    white-space: nowrap;
    word-wrap: normal;
    direction: ltr;
    -webkit-font-feature-settings: 'liga';
    -webkit-font-smoothing: antialiased;
    }
    </style>
    
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col s12">
            <h3>FX TO ITINOS - GIN IMPORT</h3>
            <a href="assets/FORMAT-UPLOAD-GIN.csv"><b>Download Format Upload</b></a>
            <br/><br/><br/>
            <form action="postimport.php" method="post" enctype="multipart/form-data">
                <input type="file" name="inputxls" required>
                <button class="btn wave-effect" type="submit" name="tblupload">UPLOAD!</button>
            </form>
        </div>
    </div>
</div>
    
    <script src="assets/js/materialize.min.js"></script>
    <script>M.AutoInit();</script>
</body>
</html>
