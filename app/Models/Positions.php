<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class Positions extends Model
{
    use HasFactory;

    protected $fillable = [
        'position',
    ];

    public function users()
    {
        return $this->hasMany(Users::class);
    }
}
