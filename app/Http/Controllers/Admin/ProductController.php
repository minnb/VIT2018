<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Post;
use App\Models\Images;
use DB; use Auth; use File;
class ProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function getList()
    {
        $data = Post::getList(1);
        return view('admin.pages.list_product', compact('data'));
    }
    public function getListLink()
    {
        $data = Post::getList(999);
        return view('admin.pages.list_product_link', compact('data'));
    }

    public function getAdd(){
        return view('admin.pages.add_product');
    }

    public function getAddLink(){
        return view('admin.pages.add_product_link');
    }

    public function postAdd(Request $request){
        $post = new Post();
        try{
            DB::beginTransaction();
            $post->title = $request->name;
            $post->description = $request->name;
            $post->content = $request->content;
            $post->viewed = 0;
            $post->votes = 0;
            $post->parent = Category::find($request->cate_id)->parent;
            $post->type = 1;
            $post->categorieID = $request->cate_id;
            $post->userID = Auth::user()->id;
            $post->sttesign = 1;
            $post->price = 0;
            $post->save();
            $post_id = $post->id;

            if($request->file('fileImage')){
                foreach(Input::file('fileImage') as $file ){
                    $pImages = new Images;
                    $destinationPath = checkFolderImage();
                    if(isset($file)){
                        $file_name = randomString().'.'.$file->getClientOriginalExtension();
                        $pImages->image = $destinationPath.'/'.$file_name;
                        $pImages->post_id = $post_id;
                        $pImages->thumb = '';
                        $file->move($destinationPath, $file_name);
                        $pImages->save();
                    }
                }
            }
            DB::commit();
            return redirect()->route('get.admin.list.product')->with(['flash_message'=>'Tạo mới thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.add.product')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }

    public function postAddLink(Request $request){
        $post = new Post();
        try{
            DB::beginTransaction();
            $post->title = $request->name;
            $post->description = $request->description;
            
            if (empty($request->content)) {
                $post->content = "";
            }else{
                $post->content = $request->content;
            }
            
            $post->viewed = 0;
            $post->votes = 0;
            $post->parent = 999;
            $post->type = 999;
            $post->categorieID = 999;
            $post->userID = Auth::user()->id;
            $post->sttesign = 1;
            $post->price = 0;
            $post->save();
            $post_id = $post->id;

            if($request->file('fileImage')){
                foreach(Input::file('fileImage') as $file ){
                    $pImages = new Images;
                    $destinationPath = checkFolderImage();
                    if(isset($file)){
                        $file_name = randomString().'.'.$file->getClientOriginalExtension();
                        $pImages->image = $destinationPath.'/'.$file_name;
                        $pImages->post_id = $post_id;
                        $pImages->thumb = '';
                        $file->move($destinationPath, $file_name);
                        $pImages->save();
                    }
                }
            }

            DB::commit();
            return redirect()->route('get.admin.list.product.link')->with(['flash_message'=>'Tạo mới thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.add.product.link')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }

    public function getEdit($id){
        $post_id = $id;
        $data = Post::find($id);
        return view('admin.pages.edit_product', compact('data', 'post_id'));
    }
    public function getEditLink($id){
        $post_id = $id;
        $data = Post::find($id);
        return view('admin.pages.edit_product_link', compact('data', 'post_id'));
    }

    public function postEditLink(Request $request, $id){
        $post_id = $id;
        $post = Post::findOrFail($post_id);;
        try{
            DB::beginTransaction();
            $post->title = $request->name;
            $post->description = $request->description;
            
            if (empty($request->content)) {
                $post->content = "";
            }else{
                $post->content = $request->content;
            }
            
            $post->userID = Auth::user()->id;
            $post->save();
            if($request->file('fileImage')){
                foreach(Input::file('fileImage') as $file ){
                    $pImages = new Images;
                    $destinationPath = checkFolderImage();
                    if(isset($file)){
                        $file_name = randomString().'.'.$file->getClientOriginalExtension();
                        $pImages->image = $destinationPath.'/'.$file_name;
                        $pImages->post_id = $post_id;
                        $pImages->thumb = '';
                        $file->move($destinationPath, $file_name);
                        $pImages->save();
                    }
                }
            }
            DB::commit();
            return redirect()->route('get.admin.list.product.link')->with(['flash_message'=>'Chỉnh sửa thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.add.product.link')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }

    public function postEdit(Request $request, $id){
        $post_id = $id;
        $post = Post::findOrFail($post_id);;
        try{
            DB::beginTransaction();
            $post->title = $request->name;
            $post->content = $request->content;
            $post->parent = Category::find($request->cate_id)->parent;
            $post->categorieID = $request->cate_id;
            $post->userID = Auth::user()->id;
            $post->save();
            if($request->file('fileImage')){
                foreach(Input::file('fileImage') as $file ){
                    $pImages = new Images;
                    $destinationPath = checkFolderImage();
                    if(isset($file)){
                        $file_name = randomString().'.'.$file->getClientOriginalExtension();
                        $pImages->image = $destinationPath.'/'.$file_name;
                        $pImages->post_id = $post_id;
                        $pImages->thumb = '';
                        $file->move($destinationPath, $file_name);
                        $pImages->save();
                    }
                }
            }
            DB::commit();
            return redirect()->route('get.admin.list.product_link')->with(['flash_message'=>'Chỉnh sửa thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.add.product_link')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }

    public function getDelete($id){
        $post = Post::findOrFail($id);
        try{
            DB::beginTransaction();
            if(isset($post)){
                $pImage = Images::where('post_id',$post->id)->get();
                if(isset($pImage)){
                    foreach($pImage as $item){
                        File::delete($item->image);
                    }
                    DB::table('posts')->where('id','=',$id)->delete();
                }
            }  
            DB::commit();
            return redirect()->route('get.admin.list.product')->with(['flash_message'=>'Xóa dữ liệu thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.add.product')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }
    public function getDeleteLink($id){
        $post = Post::findOrFail($id);
        try{
            DB::beginTransaction();
            if(isset($post)){
                $pImage = Images::where('post_id',$post->id)->get();
                if(isset($pImage)){
                    foreach($pImage as $item){
                        File::delete($item->image);
                    }
                    DB::table('posts')->where('id','=',$id)->delete();
                }
            }  
            DB::commit();
            return redirect()->route('get.admin.list.product.link')->with(['flash_message'=>'Xóa dữ liệu thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.add.product.link')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }

    public function getDelImage($id){
        $pImage = Images::findOrFail($id);
        if(isset($pImage)){
            File::delete($pImage->image);
            DB::table('images')->where('id','=',$id)->delete();
        }
        return 'OK';
    }
}