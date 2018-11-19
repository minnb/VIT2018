<?php
Auth::routes();
Route::get('dashboard', ['as'=>'dashboard', 'uses'=>'Admin\AdminController@index']);
Route::get('logout',['as'=>'logout', 'uses'=>'Auth\LoginController@getLogout']);
Route::get('login',['as'=>'login', 'uses'=>'HomeController@getLogin']);
Route::get('logout', function(){
	return redirect('login');
});
Route::group(['prefix'=> 'dashboard'], function(){
		Route::group(['prefix'=> 'cate'], function(){
			Route::get('product/lists', ['as'=>'get.admin.cate.product.list','uses'=>'Admin\CateController@getCateProduct']);
			Route::get('project/lists', ['as'=>'get.admin.cate.project.list','uses'=>'Admin\CateController@getCateProject']);
			Route::get('document/lists', ['as'=>'get.admin.cate.document.list','uses'=>'Admin\CateController@getCateDocument']);
			Route::get('news/lists', ['as'=>'get.admin.cate.new.list','uses'=>'Admin\CateController@getCateNew']);
		});
	});

Route::group(['prefix'=> 'dashboard'], function(){
		Route::group(['prefix'=> 'lists'], function(){
			Route::get('products', ['as'=>'get.admin.list.product','uses'=>'Admin\ProductController@getList']);
			Route::get('projects', ['as'=>'get.admin.list.project','uses'=>'Admin\ProjectController@getList']);
			Route::get('documents', ['as'=>'get.admin.list.document','uses'=>'Admin\DocumentController@getList']);
			Route::get('news', ['as'=>'get.admin.list.new','uses'=>'Admin\NewController@getList']);
		});
	});

Route::group(['prefix'=> 'dashboard'], function(){
		Route::group(['prefix'=> 'setting'], function(){
			Route::get('hotline', ['as'=>'get.admin.setting.hotline','uses'=>'Admin\CommonController@getHotline']);
			Route::get('hotline/list', ['as'=>'get.admin.setting.hotline.list','uses'=>'Admin\CommonController@getListHotline']);
			Route::post('hotline/add', ['as'=>'post.admin.setting.hotline.add','uses'=>'Admin\CommonController@postHotline']);
			Route::get('hotline/edit/{id}', ['as'=>'get.admin.setting.hotline.edit','uses'=>'Admin\CommonController@getEditHotline']);
			Route::post('hotline/edit/{id}', ['as'=>'post.admin.setting.hotline.edit','uses'=>'Admin\CommonController@postEditHotline']);
			Route::get('hotline/del/{id}', ['as'=>'get.admin.setting.hotline.del','uses'=>'Admin\CommonController@getDelete']);

			Route::get('company', ['as'=>'get.admin.setting.company','uses'=>'Admin\CommonController@getCompany']);
			Route::get('company/list', ['as'=>'get.admin.setting.company.list','uses'=>'Admin\CommonController@getListCompany']);
			Route::get('company/edit/{id}', ['as'=>'get.admin.setting.company.edit','uses'=>'Admin\CommonController@getEditCompany']);
			Route::post('company/edit/{id}', ['as'=>'post.admin.setting.company.edit','uses'=>'Admin\CommonController@postEditCompany']);
			//Route::get('company/del/{id}', ['as'=>'get.admin.setting.company.del','uses'=>'Admin\CommonController@getDelete']);

			Route::get('company', ['as'=>'get.admin.setting.company','uses'=>'Admin\CommonController@getCompany']);	
		});
	});