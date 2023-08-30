<?php

namespace App\Http\Controllers;

use App\Http\Requests\FavoriteMovieRequest;
use App\Models\FavoriteMovie;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class FavoriteMovieController extends Controller
{
    public function index(): Response
    {
        return Inertia::render('Index');
    }

    public function store(FavoriteMovieRequest $request)
    {

//        $data = [...$request->validated(), 'user_id' => $request->user()->id];
//
//        FavoriteMovie::createOrRestore($data)
    }
}
