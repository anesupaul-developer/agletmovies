<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Responses\MovieResponse;
use Illuminate\Support\Facades\Request;
use Inertia\Inertia;
use Inertia\Response;

class MovieController extends Controller
{
    public function index(): Response
    {
        $movies = Movie::query()
            ->when(Request::input('search'), function ($query, $search) {
                $query->where('title', 'like', "%{$search}%");
            })
            ->paginate(9)
            ->withQueryString()
            ->through(fn ($movie) => (new MovieResponse($movie))->toArray());

        return Inertia::render('Movies/Watch', [
            'movies' => $movies,
            'filters' => Request::only(['search', 'page']),
        ]);
    }
}
