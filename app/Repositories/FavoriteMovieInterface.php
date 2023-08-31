<?php

namespace App\Repositories;

interface FavoriteMovieInterface
{
    public function createOrDelete(): void;
}
