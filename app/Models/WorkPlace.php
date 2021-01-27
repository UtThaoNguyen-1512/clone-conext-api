<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkPlace extends Model
{
    use HasFactory;
    protected $fillable = [
        'workplace_id',
        'name',
        'price',
        'image',
        'address_id',
        'is_active',
        'is_delete'
    ];
}
