<?php

namespace App\Repositories;

use App\Models\Movie;

class MovieRepository implements MovieRepositoryInterface
{

    public function findAll(string $search = ''): array
    {
        return [];
    }
}
