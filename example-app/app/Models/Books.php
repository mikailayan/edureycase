<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Authors;

class Books extends Model
{
    use HasFactory;


    protected $table = 'books';
    protected $fillable = [
        'name',
        'authors_id',
    ];

    public function authors()
    {
        return $this->belongsTo(Authors::class);
    }
}


