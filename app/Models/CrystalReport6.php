<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CrystalReport6 extends Model
{
    public $table = "crystal_report6s";
    use HasFactory;

    protected $fillable = [
        'site_id',
        'site_name',
        'location',
        'location_type',
        'category',
        'item_no',
        'item_name',
        'barcode',
        'uom'
    ];
}
