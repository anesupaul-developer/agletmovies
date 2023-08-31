<?php

namespace App\Repositories;

use App\Models\Movie;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Request;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class MovieRepository implements MovieRepositoryInterface
{

    public function findAll(): LengthAwarePaginator
    {
        return Movie::query()
            ->when(Request::input('search'), function ($query, $search) {
                $query->where('title', 'like', "%{$search}%");
            })
            ->paginate(9)
            ->withQueryString()
            ->through(fn($movie) => [
                'id' => $movie->id,
                'is_favorite' => $movie->isFavorite(),
                'external_id' => $movie->movie_external_id,
                'title' => $movie->title,
                'poster_image_url' => $movie->getImageUrl(),
                'description' => $movie->overview,
                'released_on' => Carbon::parse($movie->release_date)->format('M d Y'),
            ]);
    }
}
