 <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-3 col-xs-12">
          <div class="footer-logo"><a href="index.html"></a>
            <!--<img src="<?php echo asset('public/home/images/footer-logo.png') ?> " alt="vitduct.com.vn"></a>  -->
            <b style="color:white">CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI VIỆT NAM</b>
          </div>
          <div class="footer-description">Số 14-Nghách 30-Ngõ 192, Phố Yên Duyên, Yên Sở-Hoàng Mai, Hà Nội </div>
          <div class="footer-description"><b>Điện thoại:</b> 024.36454199 </div>
          <div class="footer-description"><b>Fax:</b> 024.36454199 </div>
          <div class="footer-description"><b>Email:</b> contact@vitduct.com.vn </div>
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
                <li><a href="account_page.html">Sản phẩm</a></li>
                <li><a href="wishlist.html">Dự án</a></li>
                <li><a href="shopping_cart.html">Báo giá & Catalog</a></li>
                <li><a href="#">Giới thiệu</a></li>
                <li><a href="#">Liên hệ</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-xs-12 collapsed-block">
          <div class="footer-links">
            <h3 class="links-title">NHÀ MÁY SẢN XUẤT<a class="expander visible-xs" href="#TabBlock-5">+</a></h3>
            <div class="tabBlock" id="TabBlock-5">
              <div class="footer-description">Cụm CN Yên Bình, xã Yên Bình, Huyện Thạch Thất, TP Hà Nội</div>
              <div class="footer-description"> <b>Điện thoại:</b>  (+84) 0983 625 429 <br>
                <b>Email:</b> contact@vitduct.com.vn<br>
                <b></b>  </div>
            </div>
            <div class="social">
                <ul class="inline-mode">
                  <li class="social-network fb">
                    <a title="Connect us on Facebook" target="_blank" href="https://www.facebook.com/vitductchuyenonggio/?ref=br_rs"><i class="fa fa-facebook"></i></a>
                  </li>
                  <li class="social-network googleplus">
                    <a title="Connect us on Google+" target="_blank" href="https://plus.google.com"><i class="fa fa-google"></i></a>
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
              <li> <a href="<?php echo route('index'); ?>">Giới thiệu</a> </li>
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