<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Samplings extends Model
{
    use HasFactory;
    protected $table = "cycle_counts";
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
