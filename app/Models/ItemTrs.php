<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ItemTrs extends Model
{
    use HasFactory;

    protected $fillable = [
        'tr_id',
        'item_no',
        'item_desc',
        'item_code',
        'uom',
        'qty'
    ];

    public function item_trs()
    {
        return $this->belongsTo(Trs::class, 'tr_id', 'id');
    }
}
