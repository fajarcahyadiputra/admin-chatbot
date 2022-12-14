<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MessageReply extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['keyword','message', 'type', 'question','linkMedia', 'number_destination'];
}
