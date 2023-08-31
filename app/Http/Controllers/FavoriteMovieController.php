<?php

namespace App\Http\Controllers;

use App\Http\Requests\FavoriteMovieRequest;
use App\Models\FavoriteMovie;
use App\Models\Movie;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class FavoriteMovieController extends Controller
{
    public function index(): Response
    {
        $favorites = FavoriteMovie::query()
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
        return Inertia::render('Movies/Favorite', [
            'movies' => []
        ]);
    }

    public function store(FavoriteMovieRequest $request): void
    {

        $data = [...$request->validated(), 'user_id' => $request->user()->id];

        $favorite = FavoriteMovie::where('user_id', $request->user()->id)
            ->where('movie_id', $data['movie_id'])
            ->first();

        if (!$favorite) {
            FavoriteMovie::query()->create($data);
        } else {
            $favorite->delete();
        }

    }
}
