<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Stores extends Model
{
    protected $primaryKey = 'site_id';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'site_id',
        'site_name',
        'region_id',
    ];
    public function regions()
    {
        return $this->belongsTo(Regions::class, 'region_id');
    }

    public function users()
    {
        return $this->hasMany(Users::class);
    }
}
