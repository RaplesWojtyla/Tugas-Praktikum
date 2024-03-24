<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ktd extends Model
{
    use HasFactory;

    protected $table = 'ktd';
    protected $primaryKey = 'id_dosen';
    public $timeStamps = false;
    public function dosen_ktd()
    {
        $this->belongsTo(Dosen::class);
    }
}
