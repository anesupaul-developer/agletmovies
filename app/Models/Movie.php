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

    public function getImageUrl(): string
    {
        return config('services.movies.image_url').$this->getAttribute('poster_path');
    }

    public function getBackdropUrl(): string
    {
        return config('services.movies.image_url').$this->getAttribute('backdrop_path');
    }

    public function isFavorite(): bool
    {
        return $this->hasOne(FavoriteMovie::class, 'movie_id', 'id')
            ->where('user_id', request()->user()->id)
            ->exists();
    }
}
