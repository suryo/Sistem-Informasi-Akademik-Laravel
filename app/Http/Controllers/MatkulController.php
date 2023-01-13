<?php

namespace App\Http\Controllers;

use App\Jadwal;
use App\Matkul;
use App\Semester;
use App\Guru;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;

class MatkulController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $matkul = Matkul::OrderBy('kelompok', 'asc')->OrderBy('nama_matkul', 'asc')->get();
        $semester = Semester::all();
        return view('admin.matkul.index', compact('matkul', 'semester'));
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

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_matkul' => 'required',
            'semester_id' => 'required',
            'kelompok' => 'required'
        ]);

        Matkul::updateOrCreate(
            [
                'id' => $request->matkul_id
            ],
            [
                'nama_matkul' => $request->nama_matkul,
                'semester_id' => $request->semester_id,
                'kelompok' => $request->kelompok,
            ]
        );

        return redirect()->back()->with('success', 'Data matkul berhasil diperbarui!');
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
        $id = Crypt::decrypt($id);
        $matkul = Matkul::findorfail($id);
        $Semester = Semester::all();
        return view('admin.matkul.edit', compact('matkul', 'Semester'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $matkul = Matkul::findorfail($id);
        $countJadwal = Jadwal::where('matkul_id', $matkul->id)->count();
        if ($countJadwal >= 1) {
            $jadwal = Jadwal::where('matkul_id', $matkul->id)->delete();
        } else {
        }
        $countGuru = Guru::where('matkul_id', $matkul->id)->count();
        if ($countGuru >= 1) {
            $guru = Guru::where('matkul_id', $matkul->id)->delete();
        } else {
        }
        $matkul->delete();
        return redirect()->back()->with('warning', 'Data matkul berhasil dihapus! (Silahkan cek trash data matkul)');
    }

    public function trash()
    {
        $matkul = Matkul::onlyTrashed()->get();
        return view('admin.matkul.trash', compact('matkul'));
    }

    public function restore($id)
    {
        $id = Crypt::decrypt($id);
        $matkul = Matkul::withTrashed()->findorfail($id);
        $countJadwal = Jadwal::withTrashed()->where('matkul_id', $matkul->id)->count();
        if ($countJadwal >= 1) {
            $jadwal = Jadwal::withTrashed()->where('matkul_id', $matkul->id)->restore();
        } else {
        }
        $countGuru = Guru::withTrashed()->where('matkul_id', $matkul->id)->count();
        if ($countGuru >= 1) {
            $guru = Guru::withTrashed()->where('matkul_id', $matkul->id)->restore();
        } else {
        }
        $matkul->restore();
        return redirect()->back()->with('info', 'Data matkul berhasil direstore! (Silahkan cek data matkul)');
    }

    public function kill($id)
    {
        $matkul = Matkul::withTrashed()->findorfail($id);
        $countJadwal = Jadwal::withTrashed()->where('matkul_id', $matkul->id)->count();
        if ($countJadwal >= 1) {
            $jadwal = Jadwal::withTrashed()->where('matkul_id', $matkul->id)->forceDelete();
        } else {
        }
        $countGuru = Guru::withTrashed()->where('matkul_id', $matkul->id)->count();
        if ($countGuru >= 1) {
            $guru = Guru::withTrashed()->where('matkul_id', $matkul->id)->forceDelete();
        } else {
        }
        $matkul->forceDelete();
        return redirect()->back()->with('success', 'Data matkul berhasil dihapus secara permanent');
    }

    public function getMatkulJson(Request $request)
    {
        $jadwal = Jadwal::OrderBy('matkul_id', 'asc')->where('kelas_id', $request->kelas_id)->get();
        $jadwal = $jadwal->groupBy('matkul_id');

        foreach ($jadwal as $val => $data) {
            $newForm[] = array(
                'matkul' => $data[0]->pelajaran($val)->nama_matkul,
                'guru' => $data[0]->pengajar($data[0]->guru_id)->id
            );
        }

        return response()->json($newForm);
    }
}