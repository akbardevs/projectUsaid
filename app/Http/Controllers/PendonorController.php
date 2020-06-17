<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Pendonor;
use App\Province;
use App\Regencie;
<<<<<<< HEAD
=======
use App\District;
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
use Yajra\DataTables\Contracts\DataTable;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\MessageBag;
use Redirect,Response;
<<<<<<< HEAD
=======
use File;
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce

class PendonorController extends Controller
{

    public function __construct()
    {
        $this->middleware('role:admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Pendonor::latest()->get();
            return datatables()->of($data)
            ->addIndexColumn()
            ->editColumn('status',function($row){
                
                if($row->status == 1){
                    $status = "Aktif";
                }else{
                    $status = "Mati";
                }
                return "$status";
            })
            ->editColumn('provinsi',function($row){
                return $row->province->name;
            })
<<<<<<< HEAD
            ->addColumn('points',function($row){
                $points = 0;
                foreach ($row->donor as $value) {
                  $points = $points + $value->points;
                }
                return $points;
=======
            ->editColumn('regensi', function ($row) {
                    return $row->regencie->name;
            })
            ->editColumn('kec', function ($row) {
                    return $row->district->name;
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            })
            ->addColumn('last_donation',function($row){
                $tgl = '1990-09-09';
                foreach ($row->donor as $value) {
                    if ($value->tgl_donor > $tgl) {
                        $tgl = $value->tgl_donor;
                    }
                  
                }
                return $tgl;
            })
            ->addColumn('action', function ($row) {
<<<<<<< HEAD
                $action = '<a class="btn btn-success btn-sm" id="edit-pendonor" data-toggle="modal" data-id='.$row->id.' title="Edit"><i class="far fa-edit"></i> </a>
=======
                $action = '<a class="btn btn-info btn-sm" id="show-user" data-toggle="modal" data-id='.$row->id.'><i class="far fa-eye"></i></a> 
                <a class="btn btn-secondary btn-sm" id="edit-gambar" data-toggle="modal" data-id='.$row->id.' title="Show"><i class="far fa-image"></i></a>
                <a class="btn btn-success btn-sm" id="edit-pendonor" data-toggle="modal" data-id='.$row->id.' title="Edit"><i class="far fa-edit"></i> </a>
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            <meta name="csrf-token" content="{{ csrf_token() }}">
            <a id="delete-pendonor" data-id='.$row->id.' class="btn btn-danger delete-pendonor btn-sm" title="Hapus"><i class="far fa-trash-alt"></i> </a>';

                return $action;
            })
            ->rawColumns(['action'])
            ->make(true);
        }
        $provinsi = Province::pluck('name','id');
        $regencie = Regencie::pluck('name','id');
<<<<<<< HEAD
=======
        $district = District::pluck('name','id');
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
        $user = User::pluck('email','id');
        $bata = Pendonor::latest()->get();

        return view('pendonor.pendonor',[ 
            'provinsis' => $provinsi,
            'regencies' => $regencie,
<<<<<<< HEAD
=======
            'districts' => $district,
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            'users' => $user,
            'batas' => $bata,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    // public function drop(){
    //     $req = Input::get('provinsi');
    //     $regencies = Regencie::where('province_id','=', $req)
    //         ->get();
    
    //     return Response::json($regencies);
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'no_telp' => 'required',
            'tgl_lahir' => 'required',
            'gol_darah' => 'required',
<<<<<<< HEAD
=======
            'foto' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            
            

        ]);
<<<<<<< HEAD

=======
            $rnama = $request->nama;
            $file = $request->file('foto');
            $nama_file = $rnama."_".time()."_".$file->getClientOriginalName();
            $tujuan_upload = 'pendonor_file';
		    $file->move($tujuan_upload,$nama_file);
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
        
            
            $pendonor= new Pendonor;
            $pendonor->nama = $request->nama;
            $pendonor->tgl_lahir = $request->tgl_lahir;
            $pendonor->no_telp = $request->no_telp;
            $pendonor->provinsi = $request->provinsi;
            $pendonor->regensi = $request->regensi;
<<<<<<< HEAD
            $pendonor->gol_darah = $request->gol_darah;
            $pendonor->users_id = $request->user_id;
=======
            $pendonor->kec = $request->kec;
            $pendonor->detail_alamat = $request->detail_alamat;
            $pendonor->gol_darah = $request->gol_darah;
            $pendonor->users_id = $request->user_id;
            $pendonor->foto = $nama_file;
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            
            
            $pendonor->save();
            
            Alert::success('Selamat','Data Berhasil Di tambahkan');
           
            

            
        
        return redirect()->route('pendonor.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $where = array('id' => $id);
<<<<<<< HEAD
        $pendonor = Pendonor::where($where)->with('province')->first();
=======
        $pendonor = Pendonor::where($where)->with('province')->with('regencie')->with('district')->with('user')->first();
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
        return Response::json($pendonor);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
         $r=$request->validate([
            'nama' => 'required',
            'no_telp' => 'required',
            'tgl_lahir' => 'required',
            'gol_darah' => 'required',
            
            

        ]);

        $uId = $request->pendonor_id;
        
        
            
            Pendonor::where('id', $uId)->update(['nama' => $request->nama, 'tgl_lahir' => $request->tgl_lahir, 'no_telp' => $request->no_telp, 'gol_darah' => $request->gol_darah,
<<<<<<< HEAD
             'provinsi' => $request->provinsi, 'regensi' => $request->regensi,
             'users_id' => $request->users_id]);
=======
             'provinsi' => $request->provinsi, 'regensi' => $request->regensi, 'kec' => $request->kec, 'detail_alamat' => $request->detail_alamat,'tiket' => $request->tiket,
             'users_id' => $request->user_id]);
>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
            Alert::success('Selamat','Data Berhasil Di Edit');
        
        return redirect()->route('pendonor.index');
    }

<<<<<<< HEAD
=======

    public function gambar(Request $request)
    {
         $r=$request->validate([
            'foto' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        $uId = $request->pendonor_id;
        $cari = Pendonor::where('id',$uId)->first();
            File::delete('pendonor_file/'.$cari->foto);

            $rnama = $cari->nama;
            $file = $request->file('foto');
            $nama_file = $rnama."_".time()."_".$file->getClientOriginalName();
            $tujuan_upload = 'pendonor_file';
		    $file->move($tujuan_upload,$nama_file);
            
            Pendonor::where('id', $uId)->update(['foto' => $nama_file]);
            Alert::success('Selamat','Gambar Berhasil Di Ganti');
        
        return redirect()->route('pendonor.index');
    }

>>>>>>> 523802307866a9c2c3544bac332fa9f813494cce
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pendonor = Pendonor::where('id', $id)->delete();
        return Response::json($pendonor);
    }
}
