<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CycleCount4 extends Model
{
    use HasFactory;
    protected $fillable = [
        'site_id',
        'category',
        'item_code',
        'barcode_item',
        'item_name',
        'uom',
        'location',
        'lottable_2',
        'qty_sistem_wms',
        'qty_fisik',
        'hit_miss',
        'upload_date',
    ];
}
