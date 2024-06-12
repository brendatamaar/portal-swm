<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class RegionImportMappings extends Model
{
    public $table = "region_imports";
    protected $fillable = [
        'region_id',
        'data_no',
    ];

    public function regions()
    {
        return $this->belongsTo(Regions::class, 'region_id');
    }
}
