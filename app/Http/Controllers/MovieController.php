<?php

namespace App\Http\Controllers;

use App\Repositories\MovieRepositoryInterface;
use Illuminate\Support\Facades\Request;
use Inertia\Inertia;
use Inertia\Response;

class MovieController extends Controller
{
    public function __construct(protected MovieRepositoryInterface $repository)
    {
    }

    public function index(): Response
    {
        $movies = $this->repository->findAll();

        return Inertia::render('Movies/Watch', [
            'movies' => $movies,
            'filters' => Request::only(['search', 'page'])
        ]);
    }
}
