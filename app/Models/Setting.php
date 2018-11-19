<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
class Setting extends Model
{
	protected $table ="setting";
	
	public static function getHotline($limit=1){
		$hotline = '0985.912.033';
		$data = Setting::where('type','HOTLINE')->limit($limit)->get();
		if($data->count()>0){
			$hotline = $data[0]->phone;
		}
		if($hotline<>''){
			return $hotline;
		}else{
			return '0985.912.033';
		}
	}

	public static function getComName($alias='COM'){
		$data = Setting::where('alias',$alias)->get()->toArray();
		return $data;
	}
}