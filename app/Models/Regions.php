<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class Regions extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function stores(): HasMany
    {
        return $this->hasMany(Stores::class);
    }

    public function users()
    {
        return $this->hasMany(Users::class);
    }
}
