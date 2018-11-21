<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Post;
use DB;
class Category extends Model
{
    protected $table ="categories";
    //public $timestamps = false;

    public static function getList($parent){
    	$data = Category::where([
    		['parent', $parent]
    	])->orderBy('id')->get()->toArray();
    	return $data;
    }

    public static function getListTop($parent, $limit){
        $data = Category::where([
            ['parent', $parent]
        ])->orderBy('id')->limit($limit)->get()->toArray();
        return $data;
    }
    public static function countPost($cate_id){
    	$count = Post::where([
    		['categorieID', $cate_id],
    		['sttesign', 1]
    	])->get()->count();
    	return $count;
    }

    public static function getNameById($cate_id){
        return Category::find($cate_id)->name;
    }

    public static function getParentNameByCateId($cate_id){
        $id = Category::find($cate_id)->id;
        return Category::find($id)->name;
    }

}
