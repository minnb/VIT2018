<!DOCTYPE html>
<html lang="vn">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>VIT | <?php if(isset($title)){ echo $title; } else { echo 'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI VIỆT NAM'; } ?></title>
<meta name="description" content="Thi công lắp đặt các hệ thống ME cho các tòa nhà và nhà máy công nghiệp">
<meta name="keywords" content="Sản xuất: Ống thông gió, van gió, cửa gió. Lò xo chống rung giảm chấn các loại. Cung cấp, thi công Hệ thống điều hòa không khí và thông gió"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="stylesheet" href="<?php echo asset('public/home/style.css') ?>">
</head>
<body class="cms-index-index cms-home-page">
<?php
 require __DIR__.'/../layouts/menu_mobile.php';
?>
<div id="page"> 
<header>
  <div class="header-container">
    <div class="header-inner">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 col-xs-12 jtv-logo-block"> 
            <div class="logo"><a title="CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI VIỆT NAM" href="<?php echo route('index'); ?>"><img class="img-responsive" alt="CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI VIỆT NAM" title="CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI VIỆT NAM" src="<?php echo asset('public/home/images/logoVIT.png') ?>"></a> </div>
          </div>
          <div class="col-xs-12 col-sm-5 col-md-6 jtv-top-search"> 
            <div class="top-search">
              <div id="search">
                <form>
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Tìm kiếm..." name="search">
                    <button class="btn-search" type="button"><i class="fa fa-search"></i></button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-4 col-md-3 top-cart">
            <div class="link-wishlist hidden-xs"> <a href="#"> <i class="icon-phone"></i> </i><span>0985.912.033 </span></a> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>