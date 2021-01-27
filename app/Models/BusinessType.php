<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BusinessType extends Model
{
    use HasFactory;
    protected $fillable = [
        'business_type_id',
        'name',
        'is_active',
        'is_delete'
    ];
}
