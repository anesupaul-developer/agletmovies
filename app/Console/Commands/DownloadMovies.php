<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use JetBrains\PhpStorm\NoReturn;

use function json_encode;

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

        $this->store($response->body());
    }

    private function store($movies): void
    {
        dd($movies);
    }
}
