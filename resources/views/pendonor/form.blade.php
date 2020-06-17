<!-- Add and Edit customer modal -->
<div class="modal fade" id="crud-modal" aria-hidden="true">
        <div class="modal-dialog">
                <div class="modal-content">
                        <div class="modal-header">
                                <h4 class="modal-title" id="userCrudModal"></h4>
                        </div>
                        <div class="modal-body">
                                <form id="userForm" name="userForm" method="POST">
                                        <input type="hidden" name="pendonor_id" id="pendonor_id">
                                        @csrf
                                        <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <strong>Nama:</strong>
                                                                <input type="text" name="nama" id="nama"
                                                                        class="form-control" placeholder="Nama"
                                                                        required>
                                                        </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <strong>No.Telp:</strong>
                                                                <input type="number" name="no_telp" id="no_telp"
                                                                        class="form-control" placeholder="No.telp"
                                                                        required>
                                                        </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <strong>Tanggal Lahir:</strong>
                                                                <input type="date" name="tgl_lahir" id="tgl_lahir"
                                                                        class="form-control" placeholder="Tangga Lahir"
                                                                        required>
                                                        </div>
                                                </div>


                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <label>Provinsi</label>
                                                                <select class="form-control select2"
                                                                        style="width: 100%; " name="provinsi"
                                                                        id="provinsi">
                                                                        <option value="">Pilih PROVINSI</option>
                                                                        @foreach ($provinsis as $id => $name)
                                                                        <option value="{{$id}}">{{$name}}</option>
                                                                        @endforeach
                                                                </select>
                                                        </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <strong>Alamat:</strong>
                                                                <input type="text" name="detail_alamat"
                                                                        id="detail_alamat" class="form-control"
                                                                        placeholder="detail alamat" required>
                                                        </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <label>Regensi</label>
                                                                <select class="form-control select2"
                                                                        style="width: 100%;" name="regensi"
                                                                        id="regensi">
                                                                        <option value="">Pilih KAB/KOTA</option>
                                                                        @foreach ($regencies as $id => $name)
                                                                        <option value="{{$id}}">{{$name}}</option>
                                                                        @endforeach
                                                                </select>
                                                        </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <label>Kecamatan</label>
                                                                <select class="form-control select2"
                                                                        style="width: 100%;" name="kec" id="kec">
                                                                        <option value="">Pilih KECAMATAN</option>
                                                                        @foreach ($districts as $id => $name)
                                                                        <option value="{{$id}}">{{$name}}</option>
                                                                        @endforeach
                                                                </select>
                                                        </div>
                                                </div>



                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <label>Gol Darah</label>
                                                                <select class="form-control" name="gol_darah"
                                                                        id="gol_darah">
                                                                        <option value="">Pilih Gol Darah</option>
                                                                        <option value="A+">A+</option>
                                                                        <option value="A-">A-</option>
                                                                        <option value="B+">B+</option>
                                                                        <option value="B-">B-</option>
                                                                        <option value="O+">O+</option>
                                                                        <option value="O-">O-</option>
                                                                        <option value="AB+">AB+</option>
                                                                        <option value="AB-">AB-</option>
                                                                </select>
                                                        </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12" id="class-tiket">
                                                        <div class="form-group">
                                                                <strong>Tiket:</strong>
                                                                <input type="text" name="tiket" id="tiket"
                                                                        class="form-control" placeholder="Tiket">
                                                        </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-12 col-md-12" id="class-status">
                                                        <div class="form-group">
                                                                <label>Status</label>
                                                                <select class="form-control" name="status" id="status">
                                                                        <option value="">Pilih Status</option>
                                                                        <option value="1">Aktif</option>
                                                                        <option value="0">Tidak AKtif</option>
                                                                </select>
                                                        </div>
                                                </div>



                                                <div class="col-xs-12 col-sm-12 col-md-12">
                                                        <div class="form-group">
                                                                <label>User</label>
                                                                <select class="form-control select2"
                                                                        style="width: 100%;" name="user_id"
                                                                        id="user_id">
                                                                        <option value="">Pilih User</option>
                                                                        @foreach ($users as $id => $email)
                                                                        <option value="{{$id}}">{{$email}}</option>
                                                                        @endforeach
                                                                </select>
                                                        </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-12 col-md-12" id="class-foto">
                                                        <div class="form-group">
                                                                <strong>Foto:</strong>
                                                                <input type="file" name="foto" id="foto"
                                                                        class="form-control" placeholder="Foto">
                                                        </div>
                                                </div>




                                                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                                                        <button type="submit" id="btn-save" name="btnsave"
                                                                class="btn btn-primary">Save</button>
                                                        <a href="{{ route('pendonor.index') }}"
                                                                class="btn btn-danger">Cancel</a>
                                                </div>
                                        </div>
                                </form>
                        </div>
                </div>
        </div>
</div>








<!-- Show user modal -->
<div class="modal fade" id="crud-modal-show" aria-hidden="true">
        <div class="modal-dialog">
                <div class="modal-content">
                        <div class="modal-header">
                                <h4 class="modal-title" id="userCrudModal-show"></h4>
                        </div>
                        <div class="modal-body">
                                <div class="row">
                                        <div class="col-xs-2 col-sm-2 col-md-2"></div>
                                        <div class="col-xs-10 col-sm-10 col-md-10 ">

                                                <table class="table-responsive ">

                                                        <tr height="50px">
                                                                <td><img width="100px"
                                                                                src="{{asset('/adminlte/dist/img/user2-160x160.jpg')}}"
                                                                                class="rounded mx-auto d-block"
                                                                                id="sfoto" /></td>
                                                                <td></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Nama:</strong></td>
                                                                <td id="sname"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>NO.Telp:</strong></td>
                                                                <td id="sno_telp"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Tanggal Lahir:</strong></td>
                                                                <td id="stgl_lahir"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Provinsi:</strong></td>
                                                                <td id="sprovinsi"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Regensi:</strong></td>
                                                                <td id="sregensi"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Kecamatan:</strong></td>
                                                                <td id="skec"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>GolDarah:</strong></td>
                                                                <td id="sgol_darah"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Alamat:</strong></td>
                                                                <td id="salamat"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Tiket:</strong></td>
                                                                <td id="stiket"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>status:</strong></td>
                                                                <td id="sstatus"></td>
                                                        </tr>
                                                        <tr height="50px">
                                                                <td><strong>Users:</strong></td>
                                                                <td id="susers"></td>
                                                        </tr>


                                                        <tr>
                                                                <td></td>
                                                                <td style="text-align: right "><a
                                                                                href="{{ route('pendonor.index') }}"
                                                                                class="btn btn-danger">OK</a> </td>
                                                        </tr>
                                                </table>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
</div>





<div class="modal fade" id="crud-modal-gambar" aria-hidden="true">
        <div class="modal-dialog">
                <div class="modal-content">
                        <div class="modal-header">
                                <h4 class="modal-title" id="userCrudModalgambar"></h4>
                        </div>
                        <div class="modal-body">
                                <form id="userFormgambar" name="userForm" method="POST" enctype="multipart/form-data">
                                        <input type="hidden" name="pendonor_id" id="pendonor_id">
                                        @csrf
                                        <div class="row">


                                                <div class="col-xs-12 col-sm-12 col-md-12" id="class-foto">
                                                        <div class="form-group">
                                                                <strong>Foto:</strong>
                                                                <input type="file" name="gfoto" id="gfoto"
                                                                        class="form-control" placeholder="Foto">
                                                        </div>
                                                </div>




                                                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                                                        <button type="submit" id="btn-save" name="btnsave"
                                                                class="btn btn-primary">Save</button>
                                                        <a href="{{ route('pendonor.index') }}"
                                                                class="btn btn-danger">Cancel</a>
                                                </div>
                                        </div>
                                </form>
                        </div>
                </div>
        </div>
</div>