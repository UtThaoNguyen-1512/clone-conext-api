<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voucher extends Model
{
    use HasFactory;
    protected $guarded = ['id','a'];

    // protected $fillable = [
    //     'title',
    //     'is_expired',
    //     'image',
    //     'description',
    //     'is_active',
    //     'is_delete',
    // ];
}
