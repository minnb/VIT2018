<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Models\Category;
use App\Models\Setting;
use App\Models\Slide;
use File;
use DB;
class CommonController extends Controller
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
    public function getHotline(){
        return view('admin.setting.hotline');
    }
    public function getListHotline(){
        return Setting::where('type','HOTLINE')->orderBy('id','DESC')->get();
    }
    public function postHotline(Request $request){
        $setting = new Setting;
        try{
            DB::beginTransaction();
            $setting->type ='HOTLINE';
            $setting->name =$request->name;
            $setting->address ='';
            $setting->phone = $request->phone;
            $setting->email = $request->email;
            $setting->alias = '';
            $setting->sort = 1;
            $setting->status = 1;
            $setting->save();
            DB::commit();
            return "OK";  
        }catch (Exception $e) {
            DB::rollBack();
            return "NOT"; 
        }
    }
    public function getEditHotline($id){
        return Setting::findOrFail($id);
    }
    public function postEditHotline(Request $request, $id){
        $setting = Setting::findOrFail($id);
        try{
            DB::beginTransaction();
            $setting->name =$request->name;
            $setting->phone = $request->phone;
            $setting->email = $request->email;
            $setting->save();
            DB::commit();
            return "OK";  
        }catch (Exception $e) {
            DB::rollBack();
            return "NOT"; 
        }
    }

    public function getDelete($id){
        $hotline = Setting::findOrFail($id);
        $hotline->delete();
        return "OK";
    }
//******************************************************************************
    public function getCompany(){
        return view('admin.setting.company');
    }
    public function getListCompany(){
        return Setting::where('type','COMPANY')->orderBy('id','DESC')->get();
    }
    public function getEditCompany($id){
        return Setting::findOrFail($id);
    }
    public function postEditCompany(Request $request, $id){
        $setting = Setting::findOrFail($id);
        try{
            DB::beginTransaction();
            $setting->name =$request->name;
            $setting->address =$request->address;
            $setting->phone = $request->phone;
            $setting->fax =$request->fax;
            $setting->email = $request->email;
            $setting->save();
            DB::commit();
            return "OK";  
        }catch (Exception $e) {
            DB::rollBack();
            return "NOT"; 
        }
    }

    public function getListSlide(){
        $data = Slide::orderBy('id')->get()->toArray();
        return view('admin.setting.slide', compact('data'));
    }

    public function postSlide(Request $request){
        try{
            DB::beginTransaction();

            if($request->file('fileImage')){
                foreach(Input::file('fileImage') as $file ){
                    $slide = new Slide;
                    $destinationPath = '/public/images';
                    if(isset($file)){
                        $file_name = randomString().'.'.$file->getClientOriginalExtension();
                        $slide->image = $destinationPath.'/'.$file_name;
                        $slide->description = '';
                        $slide->alias = '';
                        $file->move($destinationPath, $file_name);
                        $slide->save();
                    }
                }
            }
            DB::commit();
            return redirect()->route('get.admin.setting.slide.list')->with(['flash_message'=>'Upload hình ảnh thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.setting.slide.list')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }

    public function getSlideDel($id){
        $slide = Slide::findOrFail($id);
        try{
            DB::beginTransaction();
            if(isset($slide)){
                if(isset($slide->image)){
                    File::delete($slide->image);
                    DB::table('slide')->where('id','=',$id)->delete();
                }
            }  
            DB::commit();
            return redirect()->route('get.admin.setting.slide.list')->with(['flash_message'=>'Xóa dữ liệu thành công']);
        }catch (Exception $e) {
            DB::rollBack();
            return redirect()->route('get.admin.setting.slide.list')->with(['flash_message'=>'Có lỗi xảy ra']);
        }
    }
}