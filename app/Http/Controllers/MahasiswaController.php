<?php

namespace App\Http\Controllers;

use App\Models\Ktm;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data_mahasiswa = Mahasiswa::all();
        
        return view('mahasiswa', [
            'title' => 'Mahasiswa',
            'mahasiswa' => $data_mahasiswa,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'nim' => 'required|unique:mahasiswa',
            'jurusan' => 'required',
            'alamat' => 'required',
            'no_identitas' => 'required'
        ]);

        
        $mahasiswa = new Mahasiswa;
        $mahasiswa->nama = $request->nama;
        $mahasiswa->nim = $request->nim;
        $mahasiswa->jurusan = $request->jurusan;
        $mahasiswa->alamat = $request->alamat;
        $mahasiswa->save();
        
        $ktm = new Ktm;
        $ktm->id_mahasiswa = $mahasiswa->id_mahasiswa;
        $ktm->nomor_identitas = $request->no_identitas;
        $ktm->save();

        return redirect()->route('index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id_mahasiswa)
    {
        $mahasiswa = Mahasiswa::find($id_mahasiswa);

        return view('update', [
            'mahasiswa' => $mahasiswa
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_mahasiswa)
    {
        $request->validate([
            'nama' => 'required',
            'nim' => 'required',
            'jurusan' => 'required',    
            'alamat' => 'required',
            'no_identitas' => 'required'
        ]);

        $mahasiswa = Mahasiswa::find($id_mahasiswa);
        $ktm = Ktm::find($request->id_ktm);
        
        $mahasiswa->nama = $request->nama;
        $mahasiswa->nim = $request->nim;
        $mahasiswa->jurusan = $request->jurusan;
        $mahasiswa->alamat = $request->alamat;
        
        $ktm->nomor_identitas = $request->no_identitas;
        
        $mahasiswa->save();
        $ktm->save();

        return redirect()->route('index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
