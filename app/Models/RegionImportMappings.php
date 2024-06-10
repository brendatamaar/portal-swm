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
        'import_class_mutasi_tag_bin',
        'import_class_mutasi_c_w',
        'import_class_mutasi_d',
        'import_class_crystal_report',
        'import_class_sampling',
        'import_class_cycle_count',
    ];

    public function regions()
    {
        return $this->belongsTo(Regions::class, 'region_id');
    }
}
