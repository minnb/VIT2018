<?php
 require __DIR__.'/../layouts/header.php';
 require __DIR__.'/../layouts/left.php';
?>
<div class="content-page">
	<!-- Start content -->
    <div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12">
					<div class="breadcrumb-holder">
						<h1 class="main-title float-left">Cài đặt hotline</h1>
						<ol class="breadcrumb float-right">
							<li class="breadcrumb-item">Dashboard</li>
							<li class="breadcrumb-item active">Cài đặt hotline</li>
						</ol>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
					<div class="card mb-3">
						<div class="card-body">
							<div class="table-responsive">
								<table id="example1" class="table table-bordered table-hover display">
									<thead>
										<tr>
											<th colspan="5">
												<button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus-square-o bigfonts" aria-hidden="true"></i> Thêm mới</button>
											</th>
										</tr>
										<tr>
											<th>#</th>
											<th>Liên hệ</th>
											<th>Số điện thoại</th>
											<th>Trạng thái</th>
											<th>Action</th>
										</tr>
									</thead>	
									<tbody>
										<?php foreach($data as $key=>$item) { ?>
										<tr>
											<td><?php echo $key + 1; ?></td>
											<td><?php echo $item['name'].' #'.$item['id']; ?></td>
											<td></td>
											<td>
												<a href="#"><i class="fa fa-fw fa-edit"></i> Edit </a>
												<a href="#" style="color:red"><i class="fa fa-fw fa-trash"></i> Delete</a>
											</td>
										</tr>
										<?php } ?>
									</tbody>
								</table>
							</div>
						</div>														
					</div><!-- end card-->	
				</div>				
			</div>
        </div>
		<!-- END container-fluid -->
	</div>
	<!-- END content -->
</div>
<!-- END content-page -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
	<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Thêm số hotline</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			  <span aria-hidden="true">&times;</span>
			</button>
		</div>
		<form id="frmAddHotline" ng-controller="SettingController">
		<input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
			  <div class="modal-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Họ tên</label>
						<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Họ tên" required ng-model="hotline.name" value="{{ name }}">
				  	</div>
				  	<div class="form-group">
						<label for="exampleInputEmail1">Số điện thoại</label>
						<input type="text" class="form-control" placeholder="Số điện thoại" required ng-model="hotline.phone">
				  	</div>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			  </div>
		</form>
	</div>
  </div>
</div>


<?php
  require __DIR__.'/../layouts/footer.php';
?>

</body>
</html>