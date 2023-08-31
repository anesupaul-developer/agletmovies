<?php

namespace App\Console\Commands;

use App\Models\Movie;
use Exception;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class DownloadMovies extends Command
{
    protected $signature = 'app:download-movies';

    protected $description = 'Get movies from the movies db api';

    public function handle(): int
    {
        try {
            $authHeader = 'Bearer '.config('services.movies.token');

            $response = Http::acceptJson()
                ->withHeader('Authorization', $authHeader)
                ->get(config('services.movies.url'));

            $this->store(json_decode($response->body()));

            $this->info('Successfully');

            return self::SUCCESS;
        } catch (Exception $exception) {
            Log::error($exception->getTraceAsString());
            $this->info('Error: '.$exception->getMessage());
        }

        return self::FAILURE;
    }

    private function store($data): void
    {
        foreach ($data->results as $movie) {
            $attributes = [
                'title' => $movie->title,
                'backdrop_path' => Str::remove('/', $movie->backdrop_path),
                'movie_external_id' => $movie->id,
                'original_language' => $movie->original_language,
                'original_title' => $movie->original_title,
                'overview' => $movie->overview,
                'popularity' => $movie->popularity,
                'poster_path' => Str::remove('/', $movie->poster_path),
                'release_date' => $movie->release_date,
                'vote_average' => $movie->vote_average,
                'vote_count' => $movie->vote_count,
            ];

            Movie::updateOrCreate($attributes, ['movie_external_id' => $movie->id]);
        }
    }
}
