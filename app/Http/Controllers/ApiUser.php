<?php

namespace App\Http\Controllers;

use App\Berita;
use App\Donor;
use App\User;
use App\Pendonor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ApiUser extends Controller
{
    //
    public function index(){
        return User::all();
    }

    public function create(Request $request){
        
        $user= new User;
        $user->name = $request->nama;
        $user->email = $request->email;
        $user->role = $request->role;
        $user->password = Hash::make("12345678");
        $user->save();
        
        if($request->req!='admin' && $request->req==null){
            $user = User::where('email', '=',$request->email);
            $pendonor= new Pendonor();
            $pendonor->users_id = $user->value("id");
            $pendonor->nama = $request->nama;
            $pendonor->no_telp = $request->no_telp;
            $pendonor->tgl_lahir = $request->tgl_lahir;
            $pendonor->provinsi = $request->provinsi;
            $pendonor->regensi = $request->regensi;
            $pendonor->kec = $request->kec;
            $pendonor->detail_alamat = $request->detail_alamat;
            $pendonor->gol_darah = $request->gol_darah;
            $pendonor->last_donor = $request->last_donor;
            $pendonor->foto = $request->foto;
            $pendonor->tiket = 0;
            $pendonor->save();
        }
        return 1;
    }
    public function delete($id){
        $user = User::find($id);
        $user -> delete();
        return $id." Berhasil dihapus";
    }

    public function CekLogin(Request $request){
        $user = User::where('email', '=',$request->email);
        if ($user -> count() > 0) {
            $cekRincian=Pendonor::where('users_id','=',$user->value("id"));
            if($cekRincian->count()==0){
                $updatee=DB::table('pendonors')->Insert(
                    [
                    'users_id' => $user->value("id"),
                    'nama' => $user->value("name"), 
                    'tgl_lahir' => "", 
                    'no_telp' => "", 
                    'provinsi' => "", 
                    'regensi' => "", 
                    'kec' => "", 
                    'detail_alamat' => "", 
                    'gol_darah' => "", 
                    'last_donor' => "", 
                    'foto' => "", 
                    ]
                );
            }
            $getpoin=Donor::where('pendonor_id','=',$cekRincian->value("id"));
            if($getpoin->count()==0){
                $poin=0;
                $jumlahDonor=0;
            } else if($getpoin->count()>0){
                $poin = $getpoin->value("points");
                $jumlahDonor=$getpoin->value("jumlah");;
            } else {
                $poin=0;
                $jumlahDonor=0;
            }
            $all=DB::table('pendonors')
            ->select('users.id','users.email',
            'pendonors.nama',
            'pendonors.no_telp',
            'pendonors.tgl_lahir',
            'pendonors.provinsi',
            'pendonors.regensi',
            'pendonors.kec',
            'pendonors.detail_alamat',
            'pendonors.gol_darah',
            'pendonors.tiket',
            'pendonors.foto',
            'pendonors.last_donor')
            ->join('users','users.id','=','pendonors.users_id')
            ->where(['users.email' => $request->email])
            ->get()->first();
            return response()->json(['success'=>true,'message'=>'success', 'data' => $all,"points"=>$poin,"jDonor"=>$jumlahDonor]);
         } else if($user ->count() == 0){
            $user= new User;
            $user->name = $request->nama;
            $user->email = $request->email;
            $user->role = $request->role;
            $user->password = Hash::make("12345678");
            $user->save();
            return response()->json(['success'=>true,'message'=>'baru']);
         } else {
            return 0;
         }

    }


    public function select(){
        return DB::select('select * from pendonors');

    }

    public function provinsi(Request $request){
        $user = User::where('email', '=',$request->email);
        if ($user -> count() > 0) {
            if($request->req=='prov'){
                return DB::select('select * from provinces');
            }
            else if($request->req=='kab'){
                return DB::table('regencies')->select('id','name')->where('province_id', $request->id)->get();
            } else if($request->req=='kec'){
                return DB::table('districts')->select('id','name')->where('regency_id', $request->id)->get();
            }
        }
    }

    public function profilEdit(Request $request){
        $user = User::where('email', '=',$request->email);
        if ($user -> count() > 0) {
            $updatee=DB::table('pendonors')->updateOrInsert(
                [
                    'users_id' => $user->value("id"),
                ],
                [
                'users_id' => $user->value("id"),
                'nama' => $request->nama, 
                'tgl_lahir' => $request->tgl_lahir, 
                'no_telp' => $request->no_telp, 
                'provinsi' => $request->provinsi, 
                'regensi' => $request->regensi, 
                'kec' => $request->kec, 
                'detail_alamat' => $request->detail_alamat, 
                'gol_darah' => $request->gol_darah, 
                'last_donor' => $request->last_donor, 
                ]
            );
            if($updatee) {
                return 1;
            } else {
                return 0;
            }
        } else {
            return 0;
        }
    }

    public function Foto(Request $request){
        $user = User::where('email', '=',$request->email);
        $pendonor = Pendonor::where('users_id', '=',$user->value("id"));
        if($pendonor->count()>0 && $pendonor->value("foto")!=null){
            $path = storage_path()."/app/public/uploads/".$pendonor->value("foto");
            unlink($path);
        }
        $b64 = $request->image;
        $bin = base64_decode($b64);
        $size = getImageSizeFromString($bin);
        if (empty($size['mime']) || strpos($size['mime'], 'image/') !== 0) {
            die('Base64 value is not a valid image');
          }
          $ext = substr($size['mime'], 6);
        if (!in_array($ext, ['png', 'gif', 'jpeg'])) {
            die('Unsupported image type');
          }
        $img_file = $user->value("id").".{$ext}";
        file_put_contents(storage_path()."/app/public/uploads/".$img_file, $bin);
        if($img_file!=null){
            $updateFoto = DB::table('pendonors')
              ->where('users_id', $user->value("id"))
              ->update(['foto' => $img_file]);
              if($updateFoto){
                  return $img_file;
              } else {
                  return 0;
              }
        }
    }

    public function loginUser(Request $request){
        $email = $request->email;
        $password = $request->pass;

        $user = User::where('email', '=', $email)->first();
        if (!$user) {
            return response()->json(['success'=>false, 'message' => 'Login Fail, please check email id']);
        }
        if (!Hash::check($password, $user->value("password"))) {
            return response()->json(['success'=>false, 'message' => 'Login Fail, pls check password']);
        }
            return response()->json(['success'=>true,'message'=>'success', 'data' => $user]);
    }

    public function loginAdmin(Request $request){
        $email = $request->email;
        $password = $request->pass;
        $user = User::where('email', '=', $email)->first();
        if (!$user) {
            return response()->json(['success'=>false, 'message' => 'Login Fail, please check email id']);
        }
        if (!Hash::check($password, $user->value("password"))) {
            return response()->json(['success'=>false, 'message' => 'Login Fail, pls check password']);
        } else if($request->role=="Staff"){
            return response()->json(['success'=>true,'message'=>'success', 'data' => $user]);
        }
            
    }
    
    public function selectAll(Request $request){
        $user = User::where('email', '=',$request->email);
        $pendonor = Pendonor::where('users_id', '=',$user->value("id"))->get();
        // return [
        //     'id'        => $pendonor->value("id"),
        //     'name'      => $pendonor->value("nama"),
        //     'image'     => asset(storage_path()."/app/public/uploads/" .$pendonor->value("foto"),),
        // ];
        return $pendonor;
    }
    public function berita($id){
        $user = User::where('email', '=',$id);
        if ($user -> count() > 0) {
            // return Berita::orderBy("waktu_posting","desc")->take(5)->get();
            return Berita::all();
        }
        
    }
}
