<?php

namespace App\Http\Controllers;

use App\Repositories\MovieRepositoryInterface;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class MovieController extends Controller
{
    public function __construct(protected MovieRepositoryInterface $repository)
    {
    }

    public function index(Request $request): Response
    {
        $movies = $this->repository->findAll($request->get('search'));
        return Inertia::render('Movies/Index', []);
    }
}
