<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Items extends Model
{
    public $table = "items";
    use HasFactory;

    protected $fillable = [
        'item_no',
        'item_desc',
        'uom',
        'kategori',
    ];
}
