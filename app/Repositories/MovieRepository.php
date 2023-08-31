<?php

namespace App\Repositories;

use App\Models\Movie;
use App\Responses\MovieResponse;
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
            ->through(fn($movie) => (new MovieResponse($movie))->toArray());
    }
}
