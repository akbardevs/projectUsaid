<?php


use Illuminate\Http\Request;
use Intervention\Image\Image;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Route;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('users', 'ApiUser@index');
Route::get('users2', 'ApiUser@select');
Route::get('/berita/{id}', 'ApiUser@berita');
Route::post('adduser', 'ApiUser@create');
Route::post('cek', 'ApiUser@CekLogin');
Route::post('provinsi', 'ApiUser@provinsi');
Route::post('edit', 'ApiUser@profilEdit');
Route::post('inputFoto', 'ApiUser@Foto');
Route::post('pendonor', 'ApiUser@selectAll');
Route::post('login', 'ApiUser@loginUser');
Route::delete('/user/{id}', 'ApiUser@delete');
Route::get('foto/{action}/{filename}', function ($action,$filename)
{
    if($action=="berita"){
        $path = public_path('berita_file/'.$filename);
    } else if($action=="profil"){
        $path = storage_path('app/public/uploads/'.$filename);
    }
    
    if (!File::exists($path)) {
        abort(404);
    }

    $file = File::get($path);
    $type = File::mimeType($path);

    $response = Response::make($file, 200);
    $response->header("Content-Type", $type);

    return $response;
    // return Image::make(storage_path('public/uploads/' . $filename))->response();
});
