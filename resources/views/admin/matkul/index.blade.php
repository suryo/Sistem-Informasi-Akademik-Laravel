@extends('template_backend.home')
@section('heading', 'Data Matkul')
@section('page')
  <li class="breadcrumb-item active">Data Matkul</li>
@endsection
@section('content')
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">
                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".tambah-matkul">
                    <i class="nav-icon fas fa-folder-plus"></i> &nbsp; Tambah Data Matkul
                </button>
            </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama Matkul</th>
                    <th>semester</th>
                    <th>Kelompok</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($matkul as $result => $data)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $data->nama_matkul }}</td>
                   
                      <td>{{ $data->semester_id }}</td>
                   
                    <td>{{ $data->kelompok }}</td>
                    <td>
                        <form action="{{ route('matkul.destroy', $data->id) }}" method="post">
                            @csrf
                            @method('delete')
                            <a href="{{ route('matkul.edit', Crypt::encrypt($data->id)) }}" class="btn btn-success btn-sm"><i class="nav-icon fas fa-edit"></i> &nbsp; Edit</a>
                            <button class="btn btn-danger btn-sm"><i class="nav-icon fas fa-trash-alt"></i> &nbsp; Hapus</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
          </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<!-- /.col -->

<!-- Extra large modal -->
<div class="modal fade bd-example-modal-md tambah-matkul" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title">Tambah Data Matkul</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <form action="{{ route('matkul.store') }}" method="post">
          @csrf
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="nama_matkul">Nama Matkul</label>
                  <input type="text" id="nama_matkul" name="nama_matkul" class="form-control @error('nama_matkul') is-invalid @enderror" placeholder="{{ __('Nama Mata Kuliah') }}">
                </div>
                <div class="form-group">
                  <label for="semester_id">semester</label>
                  <select id="semester_id" name="semester_id" class="form-control @error('semester_id') is-invalid @enderror select2bs4">
                    <option value="">-- Pilih semester Matkul --</option>
                    <option value="9">Semua</option>
                    @foreach ($semester as $data)
                      <option value="{{ $data->id }}">{{ $data->ket }}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                    <label for="kelompok">Kelompok</label>
                    <select id="kelompok" name="kelompok" class="select2bs4 form-control @error('kelompok') is-invalid @enderror">
                      <option value="">-- Pilih Kelompok Matkul --</option>
                      <option value="A">Matkul Umum</option>
                      <option value="B">Matkul Penjurusan</option>
                      
                    </select>
                </div>
              </div>
            </div>
        </div>
        <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal"><i class='nav-icon fas fa-arrow-left'></i> &nbsp; Kembali</button>
            <button type="submit" class="btn btn-primary"><i class="nav-icon fas fa-save"></i> &nbsp; Tambahkan</button>
        </form>
    </div>
    </div>
  </div>
</div>
@endsection
@section('script')
  <script>
    $("#MasterData").addClass("active");
    $("#liMasterData").addClass("menu-open");
    $("#DataMatkul").addClass("active");
  </script>
@endsection