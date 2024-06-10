<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class Regions extends Model
{
    protected $primaryKey = 'reg_id';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'reg_id',
        'reg_name',
    ];

    public function stores(): HasMany
    {
        return $this->hasMany(Stores::class);
    }

    public function users(): HasMany
    {
        return $this->hasMany(Users::class);
    }

    public function reg_mappings(): HasMany
    {
        return $this->hasMany(RegionImportMappings::class);
    }
}
