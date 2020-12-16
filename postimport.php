<?php
include_once('koneksi.php');
require 'assets/phpspreadsheet/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Reader\Csv;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
 
$file_mimes = array('application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

if(isset($_POST['tblupload'])){
    $arr_file = explode('.', $_FILES['inputxls']['name']);
    $extension = end($arr_file);
 
    if('csv' == $extension) {
        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
    } else {
        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
    }
 
    $spreadsheet = $reader->load($_FILES['inputxls']['tmp_name']);
     
    $sheetData = $spreadsheet->getActiveSheet()->toArray();

    for($i = 1;$i < count($sheetData);$i++){
        // menangkap data dan memasukkan ke variabel sesuai dengan kolumnya masing-masing
        $ttypetrx       = "TT007";
        $ginno          = $sheetData[$i]['0'];
        $ginproductid   = $sheetData[$i]['1'];
        $ginstyleno     = $sheetData[$i]['2'];
        $gindate        = date('Y-m-d', strtotime($sheetData[$i]['3']));
        $gincustid      = $sheetData[$i]['4'];
        $ginmpocode     = $sheetData[$i]['5'];
        $ginjomo        = $sheetData[$i]['6'];
        $ginqty         = $sheetData[$i]['7'];
        $ginprice       = $sheetData[$i]['8'];
        $ginrate        = $sheetData[$i]['9'];
        $gincurrency    = $sheetData[$i]['10'];
        $ginbctype      = $sheetData[$i]['11'];
        $ginbcdate      = $sheetData[$i]['12'];
        $ginbcno        = $sheetData[$i]['13'];
        $ginbarcode     = $sheetData[$i]['14'];
        $tsqlTrans      = "INSERT INTO dbo.Trans (No, TypeTransactionId, StyleNo, Date, CustomerId, PONoBuyer, JONo, Mark) VALUES (?, ?, ?, ?, ?, ?, ?, 'BK')";
        $tsqlTransDetail= "INSERT INTO dbo.TransDetail(TransNo, TypeTransactionId, No,ProductId, IDate, Qty, Price, Rate, Currency, BCType, BCDate, BCNo, BarcodeR, Mark) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?, 'BK')";
        $varTrans       = array($ginno, $ttypetrx, $ginstyleno, $gindate, $gincustid, $ginmpocode, $ginjomo);
        $varTransDetail = array($ginno, $ttypetrx, '1' ,$ginproductid, $gindate, $ginqty, $ginprice, $ginrate, $gincurrency, $ginbctype, $ginbcdate, $ginbcno, $ginbarcode  );
        $resultTrans    = sqlsrv_query($conn, $tsqlTrans, $varTrans);
        $resultTransDetail  = sqlsrv_query($conn, $tsqlTransDetail, $varTransDetail);
        
    }
    echo "<script>alert('UPLOAD DATA BERHASIL!')</script>";
    echo '<script>window.setTimeout(function(){

        window.location.href = "index.php";

    }, 3000);</script>';
}
?>