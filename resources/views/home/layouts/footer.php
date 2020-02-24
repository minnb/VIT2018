 <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-3 col-xs-12">
          <div class="footer-logo" style="text-align: left;">
            <!--<img src="" alt="vitduct.com.vn"></a>-->
            <b style="color:white"><?php echo $com[0]['name'] ?></b>
          </div>
          <div class="footer-description"><?php echo $com[0]['address'] ?></div>
          <div class="footer-description"><b>Điện thoại:</b> <?php echo $com[0]['phone'] ?> </div>
          <div class="footer-description"><b>Fax:</b> <?php echo $com[0]['fax'] ?> </div>
          <div class="footer-description"><b>Email:</b> <?php echo $com[0]['email'] ?> </div>
        </div>
        <div class="col-sm-6 col-md-4 col-xs-12 collapsed-block">
          <div class="footer-links">
            <h3 class="links-title">Sản phẩm<a class="expander visible-xs" href="#TabBlock-1">+</a></h3>
            <div class="tabBlock" id="TabBlock-1">
              <ul class="list-links list-unstyled">
                <?php 
                  $lstCateP = App\Models\Category::getListTop(1,5); 
                  foreach($lstCateP as $key=>$item) {
                ?>
                  <li><a href="#s"><?php echo $item['name']; ?></a></li>
                <?php } ?>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-3 col-md-2 col-xs-12 collapsed-block">
          <div class="footer-links">
            <h3 class="links-title">Danh mục<a class="expander visible-xs" href="#TabBlock-4">+</a></h3>
            <div class="tabBlock" id="TabBlock-4">
              <ul class="list-links list-unstyled">
                <li><a href="<?php echo route('index'); ?>">Sản phẩm</a></li>
                <li><a href="<?php echo route('index'); ?>">Dự án</a></li>
                <li><a href="<?php echo route('index'); ?>">Báo giá & Catalog</a></li>
                <li><a href="<?php echo route('get.baohanh'); ?>">Chính sách bảo hành </a></li>
                <li><a href="<?php echo route('get.baomat'); ?>">Chính sách bảo mật</a></li>
                <li><a href="<?php echo route('index'); ?>">Giới thiệu</a></li>
                <li><a href="<?php echo route('index'); ?>">Liên hệ</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-xs-12 collapsed-block">
          <div class="footer-links">
            <h3 class="links-title">NHÀ MÁY SẢN XUẤT<a class="expander visible-xs" href="#TabBlock-5">+</a></h3>
            <div class="tabBlock" id="TabBlock-5">
              <div class="footer-description"><?php echo $man[0]['address'] ?></div>
              <div class="footer-description"> <b>Điện thoại:</b>  <?php echo $man[0]['phone'] ?> <br>
                <b>Email:</b> <?php echo $man[0]['email'] ?><br>
                <b></b>  </div>
            </div>
            <br>
            <div class="">
                <ul class="">
                  <li class="">
                    <a title="Đã đăng ký với Bộ Công Thương" target="_blank" href="http://online.gov.vn/Home/WebDetails/53965">
                      <img src="http://online.gov.vn/Content/EndUser/LogoCCDVSaleNoti/logoSaleNoti.png" style="max-height: 50px;">
                    </a>
                  </li>
                </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-coppyright">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-xs-12 coppyright"> Copyright © 2018 <a href="#"> VIT </a>. All Rights Reserved. </div>
          <div class="col-sm-6 col-xs-12">
            <ul class="footer-company-links">
              <li> <a href="<?php echo route('index'); ?>">Trang chủ</a> </li>
              <li> <a href="<?php echo route('get.about'); ?>">Giới thiệu</a> </li>
              <li> <a href="<?php echo route('index'); ?>">Sản phẩm</a> </li>
              <li> <a href="<?php echo route('index'); ?>">Liên hệ</a> </li>
            </ul>
          </div>
      </div>
    </div>
  </div>
  </footer>
  <a href="#" id="back-to-top" title="Back to top"><i class="fa fa-angle-up"></i></a> 
  <!-- End Footer --> 