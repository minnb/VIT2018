<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Post;
use DB;
class Images extends Model
{
  protected $table ="images";
  public static function checkImageProduct($post_id){
  	$image = '';
  	$check = DB::table('images')->where('post_id',$post_id)->first();
  	if(isset($check)){
  		$image = url('/').'/'.$check->image;
  	}else{
  		$post = DB::table('posts')->where('id',$post_id)->get();
  		if($post->count()>0){
  			$image = getImageInContent($post[0]->content);
  		}
  	}
  	return $image;
  }

  public static function checkImageByPostId($post_id){
    $image = '';
    $check = DB::table('images')->where('post_id',$post_id)->get();
    if(isset($check)){
      $image = $check ;
    }
    return $image;
  }
}