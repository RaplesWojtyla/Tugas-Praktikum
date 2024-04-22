<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    use HasFactory;
    protected $table = 'mahasiswa';
    protected $primaryKey = 'nim';
    public $timestamps = false;
    protected $fillable = ['nim', 'nama', 'jurusan', 'alamat'];
    public function ktm()
    {
        return $this->hasOne(Ktm::class, 'nim');
    }
}