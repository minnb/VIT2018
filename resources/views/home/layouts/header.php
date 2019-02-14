<!DOCTYPE html>
<html lang="vn">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<?php 
    $com = App\Models\Setting::getComName('COM');
    $man = App\Models\Setting::getComName('MAN');
 ?>
<title><?php if(isset($title)){ echo $title; } else { echo $com[0]['name']; } ?></title>
<meta name="description" content="Thi công lắp đặt các hệ thống ME cho các tòa nhà và nhà máy công nghiệp">
<meta name="keywords" content="Sản xuất: Ống thông gió, van gió, cửa gió. Lò xo chống rung giảm chấn các loại. Cung cấp, thi công Hệ thống điều hòa không khí và thông gió"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="<?php echo asset('public/favicon.ico'); ?>">
<link rel="stylesheet" href="<?php echo asset('public/home/style.css') ?>">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css"/>
</head>
 
