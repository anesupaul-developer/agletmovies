<?php

namespace App\Repositories;

use Illuminate\Contracts\Pagination\LengthAwarePaginator;

interface MovieRepositoryInterface
{
    public function findAll(): LengthAwarePaginator;
}
