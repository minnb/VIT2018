<nav>
  <div class="container">
    <div class="row">
      <div class="mm-toggle-wrap">
        <div class="mm-toggle"><i class="fa fa-align-justify"></i> </div>
        <span class="mm-label">Danh mục</span> </div>
      <div class="col-md-3 col-sm-3 mega-container hidden-xs">
        <div class="navleft-container">
          <div class="mega-menu-title">
            <h3><span>Danh mục</span></h3>
          </div>
          <div class="mega-menu-category">
            <ul class="nav">
              <?php 
                $lstCate = App\Models\Category::getList(1); 
                foreach($lstCate as $key=>$item) {
              ?>
              <li class="nosub"><a href="<?php echo route('get.product.cate', ['id'=>fencrypt($item['id']),'name'=>makeUnicode($item['name'])] ) ?>"><?php echo $item['name']; ?></a></li>
              <?php } ?>
              <li class="nosub"><a href="#">Dự án tiêu biểu</a></li>
              <li class="nosub"><a href="#">Tải báo giá và Catalog</a></li>
              <li class="nosub"><a href="#">Hình ảnh nhà máy</a></li>
              <li class="nosub"><a href="#">Tin tức nội bộ</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-9 col-sm-9 jtv-megamenu">
        <div class="mtmegamenu">
          <ul class="hidden-xs">
            <li class="mt-root demo_custom_link_cms">
              <div class="mt-root-item"><a href="<?php echo route('index'); ?>">
                <div class="title title_font"><span class="title-text">Trang chủ</span></div>
                </a></div>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a href="#">
                <div class="title title_font"><span class="title-text">Sản phẩm</span></div>
                </a></div>
              <ul class="menu-items col-xs-12">
                <li class="menu-item depth-1 menucol-1-3 ">
                  <ul class="submenu">
                    <?php foreach($lstCate as $key=>$item) { ?>
                    <li class="menu-item">
                      <div class="title"> <a href="<?php echo route('get.product.cate', ['id'=>fencrypt($item['id']),'name'=>makeUnicode($item['name'])] ) ?>"><?php echo $item['name'] ?></a></div>
                    </li>
                    <?php } ?>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a href="#">
                <div class="title title_font"><span class="title-text">Báo giá & Catalog</span></div>
                </a></div>
              <ul class="menu-items col-xs-12">
                <li class="menu-item depth-1 menucol-1-3 ">
                  <ul class="submenu">
                    <?php 
                      $lstDoc = App\Models\Category::getList(11); 
                      foreach($lstDoc as $key=>$item) { ?>
                    <li class="menu-item">
                      <div class="title"> <a href="#"><?php echo $item['name'] ?></a></div>
                    </li>
                    <?php } ?>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a href="#">
                <div class="title title_font"><span class="title-text">Dự án</span> </div>
                </a></div>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a href="#">
                <div class="title title_font"><span class="title-text">Giới thiệu</span></div>
                </a></div>
            </li>
            <li class="mt-root">
              <div class="mt-root-item"><a href="#">
                <div class="title title_font"><span class="title-text">Liên hệ</span></div>
                </a></div>
            </li>
            <li><a href="#"></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</nav>
  