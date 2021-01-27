<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;
    protected $fillable = [
        'event_id',
        'title',
        'start_day',
        'end_day',
        'image',
        'online_event',
        'is_active',
        'is_delete'
    ];
}
