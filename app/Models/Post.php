<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
class Post extends Model
{
    protected $table ="posts";
    //public $timestamps = false;
    public static function getList($parent){
    	$data = Post::where([
    		['parent', $parent],
    		['sttesign', 1]
    	])->orderBy('id')->get()->toArray();
    	return $data;
    }

    public static function getPostByCateId($cate_id, $limit = ''){
    	if ($limit == '') {
    		$data = Post::where([
    			['categorieID', $cate_id],
    			['sttesign', 1]
    		])->inRandomOrder()->first();
    	}else{
    		$data = Post::where([
	    		['categorieID', $cate_id],
	    		['sttesign', 1]
    		])->orderBy('id')->limit($limit)->get()->toArray();
    	}
    	return $data;
    }

    public static function getRandomPost($parent, $limit = ''){
    	if($limit == ''){
    		$data = Post::where([
    			['parent', $parent],
    			['sttesign', 1]
    		])->inRandomOrder()->first();
    	}else{
    		$data = Post::where([
    			['parent', $parent],
    			['sttesign', 1]
    		])->inRandomOrder()->limit($limit)->get()->toArray();
    	}
    	return $data;
    }

    public static function getProductLink($parent, $limit = ''){
        if($limit == ''){
            $data = Post::where([
                ['parent', $parent],
                ['sttesign', 999]
            ])->inRandomOrder()->first();
        }else{
            $data = Post::where([
                ['parent', $parent],
                ['sttesign', 1]
            ])->inRandomOrder()->limit($limit)->get()->toArray();
        }
        return $data;
    }

    public static function getRandomPostByCate($cate, $limit = ''){
    	if($limit == ''){
    		$data = Post::where([
    			['categorieID','=', $cate],
    			['sttesign', 1]
    		])->inRandomOrder()->first();
    	}else{
    		$data = Post::where([
    			['categorieID','=', $cate],
    			['sttesign', 1]
    		])->inRandomOrder()->limit($limit)->get()->toArray();
    	}
    	return $data;
    }

    public static function CountPostByCateId($cate){
        return Post::where([
            ['categorieID',$cate],
            ['sttesign',1]
        ])->get()->count();
    }
}
