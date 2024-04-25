@extends('layouts.master')

@section('container')
<h1 class="text-center">Data Dosen</h1>
<div class="mb-4">
  <a href="/create"><button type="button" class="btn btn-success ">Tambah Data</button></a>
</div>
<div class="row">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Nama</th>
        <th scope="col">NIP</th>
        <th scope="col">NIDN</th>
        <th scope="col">Aksi</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($lecturers as $lecturer) 
      <tr>
        <th scope="row">{{ $lecturer -> id_dosen }}</th>
        <td>{{ $lecturer->nama }}</td>
        <td>{{ $lecturer->nip}}</td>
        <td>{{ $lecturer->ktd->nidn }}</td>
        <td>
          <button type="button" class="btn btn-primary">Update</button>
          <button type="button" class="btn btn-danger">Hapus</button>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
@endsection