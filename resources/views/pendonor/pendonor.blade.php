@extends('template.main')
@section('content')

{{-- @foreach ($regencies as $item)
<p>{{$item}}</p>
@endforeach --}}

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Data Pendonor</h1>

        @if ($errors->any())
        <div class="alert alert-danger" id="alert">
          <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item active">Data Pendonor</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<section class="content">
  <div class="container-fluid">
    <div class="col-sm-12">
      <a class="btn btn-success mb-2" id="new-pendonor" data-toggle="modal"><i class="fas fa-plus"></i> Tambah
        Pendonor</a>
    </div>


    <div class="col-sm-12">
      <table class="table table-bordered data-table">
        <thead>
          <tr id="">
            <th width="2%">No</th>
            <th>Nama</th>
            <th>Provinsi</th>
            <th>Regensi</th>
            <th>Kecamatan</th>
            <th>GD</th>
            <th>Last Donation</th>
            <th>Tikets</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
    </div>
  </div><!-- /.container-fluid -->
</section>
@include('pendonor.form')
@endsection
<script src="{{asset('adminlte/dist/plugins/jquery/jquery.min.js')}}"></script>


<script type="text/javascript">
  $(document).ready(function() {
$('.select2').select2();
$('[data-toggle="switch"]').bootstrapSwitch();
});

</script>







<script type="text/javascript">
  $(document).ready(function () {
    

    $('#alert').fadeOut(4000);
  
  var table = $('.data-table').DataTable({
  responsive: true,
  processing: true,
  serverSide: true,
  ajax: "{{ route('pendonor.index') }}",
  columns: [
  {data: 'DT_RowIndex', name: 'DT_RowIndex'},
  {data: 'nama', name: 'nama'},
  {data: 'provinsi', name: 'provinsi'},
  {data: 'regensi', name: 'regensi'},
  {data: 'kec', name: 'kec'},
  {data: 'gol_darah', name: 'gol_darah'},
  {data: 'last_donation', name: 'last_donation'},
  {data: 'tiket', name: 'tiket'},
  {data: 'status', name: 'status'},
  {data: 'action', name: 'action', orderable: false, searchable: false},
  ]
  });


  


  
  /* When click New customer button */
  $('#new-pendonor').click(function () {
  $('#btn-save').val("create-pendonor");
  $('#userForm').trigger("reset");
  $('#provinsi').trigger('change');
  $('#regensi').trigger('change');
  $('#kec').trigger('change');
  $('#user_id').trigger('change');
  $('#userCrudModal').html("Tambah Pendonor");
  $('#crud-modal').modal('show');
  $('#class-foto').show();
  $('#class-status').hide();
  $('#class-tiket').hide();
  $('#userForm').attr("action","{{route('pendonor.store')}}");
  
  
  });


  //   $('#provinsi').on('change', function (e) {
  //     var vprovinsi = e.target.value;
  //     console.log(e);
  //   $.get('/pendonor/drop?provinsi=' + vprovinsi, function(data){
      
  //     $('#regensi').empty();
  //     $.each(data, function(index, boxsObj){
  //       console.log("data");
  //       $('#regensi').append('<option value="'+ boxsObj.id +'">[ '+ boxsObj.id +' ] '+ boxsObj.name +'</option>');
  //     })
  //   });
  // });

 
  
  /* Edit customer */
  $('body').on('click', '#edit-pendonor', function () {
  var pendonor_id = $(this).data('id');
  $('#userForm').attr("action","{{route('pendonor.update')}}");
  $.get('/pendonor/'+pendonor_id+'/edit', function (data) {
  $('#userCrudModal').html("Edit pendonor");
  $('#btn-update').val("Update");
  $('#crud-modal').modal('show');
  $('#class-status').show();
  $('#class-foto').hide();
  $('#class-tiket').show();
  $('#pendonor_id').val(data.id);
  $('#nama').val(data.nama);
  $('#no_telp').val(data.no_telp);
  $('#tgl_lahir').val(data.tgl_lahir);
  $('#last_donation').val(data.last_donation);
  $('#gol_darah').val(data.gol_darah);
  $('#user_id').val(data.users_id);
  $('#provinsi').val(data.provinsi);
  $('#regensi').val(data.regensi);
  $('#detail_alamat').val(data.detail_alamat);
  $('#kec').val(data.kec);
  $('#status').val(data.status);
  $('#tiket').val(data.tiket);
  $('#provinsi').trigger('change');
  $('#regensi').trigger('change');
  $('#kec').trigger('change');
  $('#user_id').trigger('change');


  })
  });


  /* Ganti Gambar */
  $('body').on('click', '#edit-gambar', function () {
  var pendonor_id = $(this).data('id');
  $('#userFormgambar').attr("action","{{route('pendonor.gambar')}}");
  $.get('/pendonor/'+pendonor_id+'/edit', function (data) {
  $('#userCrudModalgambar').html("Edit Gambar");
  $('#btn-update').val("Ganti");
  $('#crud-modal-gambar').modal('show');
  $('#pendonor_id').val(data.id);
  $('#class-foto').show();
  
  
  })
  });


  


  /* Show customer */
  $('body').on('click', '#show-user', function () {
  var pendonor_id = $(this).data('id');
  $.get('/pendonor/'+pendonor_id+'/edit', function (data) {
  if (data.status == 1) {
    var stat = "Aktif";
  } else {
    var stat = "Tidak Aktif";
  }
  $('#sname').html(data.nama);
  $('#sno_telp').html(data.no_telp);
  $('#stgl_lahir').html(data.tgl_lahir);
  $('#sprovinsi').html(data.province.name);
  $('#sregensi').html(data.regencie.name);
  $('#skec').html(data.district.name);
  $('#sgol_darah').html(data.gol_darah);
  $('#salamat').html(data.detail_alamat);
  $('#sstatus').html(stat);
  $('#susers').html(data.user.name);
  $('#stiket').html(data.tiket);
  if (data.foto == 0 || data.foto == null) {
    $("#sfoto").attr("src", "{{asset('/adminlte/dist/img/user2-160x160.jpg')}}");
  } else {
    
    $("#sfoto").attr("src", "{{asset('/pendonor_file')}}/"+data.foto);
  }
  

  
  })
  $('#userCrudModal-show').html("Pendonor Details");
  $('#crud-modal-show').modal('show');
  });
  
  /* Delete customer */
  $('body').on('click', '#delete-pendonor', function () {
  var pendonor_id = $(this).data("id");
  Swal.fire({
  title: 'Apakah Kamu Yakin ?',
  type: 'warning',
  showCancelButton: true,
  cancelButtonColor: '#d33',
  confirmButtonColor: '#3085d6',
  confirmButtonText: 'Ya, hapus!',
  cancelButtonText: 'Tidak',
  allowOutsideClick: false,
  allowEscapeKey: false
  }).then(function (result) {

    if (result.value) {
      $.ajax({
      type: "DELETE",
      url: "{{url('/pendonor')}}/"+pendonor_id,
      data: {
      "id": pendonor_id,
      "_token": "{{csrf_token()}}",
      },
      success: function (data) {
      
      table.ajax.reload();
      Swal.fire({
      title: 'Data Terhapus',
      text: data.message,
      type: 'success',
      timer: '1500'
      })
      },
      error: function (data) {
      console.log('Error:', data);
      }
      });
    }
 
  });
});
  
  });
  
</script>

<!-- page script -->
{{-- <script>
  $(function () {
    $("#user").DataTable({
      "responsive": true,
      "autoWidth": false,
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
     });
  });
</script> --}}
{{-- <script>
    $(function() {
      var table = $('#user').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
              url:"{{route('user.index')}}"
},
columns: [
{ data: 'id', name: 'id' },
{ data: 'name', name: 'name' },
{ data: 'email', name: 'email' },
{data: 'action', name: 'action', orderable: false, searchable: false}
]
});
});

function deleteData(id){
var CsrfToken = $('meta[Type="csrf-token"]').attr('content');
swal({
title: 'Are you sure?',
text: "You won't be able to revert this!",
type: 'warning',
showCancelButton: true,
cancelButtonColor: '#d33',
confirmButtonColor: '#3085d6',
confirmButtonText: 'Yes, delete it!'
}).then(function () {
$.ajax({
url : "{{ url('/user') }}" + '/' + id,
type : "POST",
data : {'_method' : 'DELETE', '_token' : CsrfToken},
success : function(data) {
table.ajax.reload();
swal({
title: 'Success!',
text: data.message,
type: 'success',
timer: '1500'
})
},
error : function () {
swal({
title: 'Oops...',
text: data.message,
type: 'error',
timer: '1500'
})
}
});
});
}


</script> --}}