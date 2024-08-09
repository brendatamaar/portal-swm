<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormTrs extends Model
{
    public $table = "form_trs";
    use HasFactory;

    protected $fillable = [
        'no_document',
        'no_receipt',
        'transfer_from',
        'transfer_to',
        'status_form',
        'created_by',
        'approved_by'
    ];

    public function transferFrom()
    {
        return $this->belongsTo(Stores::class, 'transfer_from', 'site_id');
    }

    public function transferTo()
    {
        return $this->belongsTo(Stores::class, 'transfer_to', 'site_id');
    }

    public function createdBy()
    {
        return $this->belongsTo(Users::class, 'created_by', 'id');
    }

    public function approvedBy()
    {
        return $this->belongsTo(Users::class, 'approved_by', 'id');
    }

    public function trs()
    {
        return $this->hasMany(Trs::class, 'form_id', 'id');
    }

}
