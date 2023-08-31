<?php

namespace App\Http\Controllers;

use App\Http\Requests\FavoriteMovieRequest;
use App\Models\FavoriteMovie;
use App\Responses\MovieResponse;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class FavoriteMovieController extends Controller
{
    public function index(Request $request): Response
    {
        $favorites = FavoriteMovie::query()
            ->where('user_id', $request->user()->id)
            ->with('movie')
            ->whereHas('movie', function ($query) {
                $search = request()->input('search');
                if ($search) {
                    $query->where('title', 'like', "%{$search}%");
                }
            })
            ->paginate(9)
            ->withQueryString()
            ->through(fn ($favoriteMovie) => (new MovieResponse($favoriteMovie->movie))->toArray());

        return Inertia::render('Movies/Favorite', [
            'movies' => $favorites,
            'filters' => \Illuminate\Support\Facades\Request::only(['search', 'page']),
        ]);
    }

    public function store(FavoriteMovieRequest $request): void
    {
        $data = [...$request->validated(), 'user_id' => $request->user()->id];

        $favorite = FavoriteMovie::where('user_id', $request->user()->id)
            ->where('movie_id', $data['movie_id'])
            ->first();

        if (! $favorite) {
            FavoriteMovie::query()->create($data);
        } else {
            $favorite->delete();
        }
    }
}
