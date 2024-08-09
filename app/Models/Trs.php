<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trs extends Model
{
    use HasFactory;
    protected $fillable = [
        'form_id',
        'nota_penjualan',
        'promise_date'
    ];

    public function form_trs()
    {
        return $this->belongsTo(FormTrs::class, 'form_id', 'id');
    }

    public function item_trs()
    {
        return $this->hasMany(ItemTrs::class, 'tr_id', 'id');
    }
}
