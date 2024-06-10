<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sampling7 extends Model
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
        'loc_detail',
        'qty_sistem_wms',
        'qty_available_wms',
        'qty_allocated_wms',
        'qty_nav',
        'qty_fisik',
        'selisih_fisik_wms',
        'hit_miss_fisik_wms',
        'total_qty_item_wms',
        'selisih_wms_nav',
        'hit_miss_wms_nav',
        'note',
        'upload_date',
    ];
}
