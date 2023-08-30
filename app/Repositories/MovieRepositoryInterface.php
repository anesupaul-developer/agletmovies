<?php

namespace App\Repositories;

interface MovieRepositoryInterface
{
    public function findAll(string $search): array;
}
