<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @method static updateOrCreate(array $attributes, array $array)
 */
class Movie extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $guarded = [];
}
