<?php

namespace App\Console\Commands;

use App\Models\Movie;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use JetBrains\PhpStorm\NoReturn;

class DownloadMovies extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:download-movies';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Get movies from the movies db api';

    /**
     * Execute the console command.
     */
    #[NoReturn] public function handle(): void
    {
        $authHeader = "Bearer " . config('services.movies.token');

        $response = Http::acceptJson()
            ->withHeader('Authorization', $authHeader)
            ->get(config('services.movies.url'));

        $this->store(json_decode($response->body()));
    }

    private function store($data): void
    {
        foreach ($data->results as $movie) {
            $attributes = [
                'title' => $movie->title,
                'backdrop_path' => Str::remove('/', $movie->backdrop_path),
                'movie_id' => $movie->id,
                'original_language' => $movie->original_language,
                'original_title' => $movie->original_title,
                'overview' => $movie->overview,
                'popularity' => $movie->popularity,
                'poster_path' => Str::remove('/', $movie->poster_path),
                'release_date' => $movie->release_date,
                'vote_average' => $movie->vote_average,
                'vote_count' => $movie->vote_count,
            ];

            Movie::updateOrCreate($attributes, ['movie_id' => $movie->id]);
        }
    }
}
