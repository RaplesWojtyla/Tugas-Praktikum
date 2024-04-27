<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ktm extends Model
{
    use HasFactory;

    protected $table = 'ktm';
    protected $primaryKey = 'id_ktm';
    public $timestamps = false;
    protected $fillable = ['id_mahasiswa', 'nomor_identitas'];
    public function mahasiswa()
    {
        return $this->belongsTo(Mahasiswa::class);
    }
}
