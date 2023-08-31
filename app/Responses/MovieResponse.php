<?php

namespace App\Responses;

use App\Models\Movie;
use Carbon\Carbon;

class MovieResponse
{
    public function __construct(protected readonly Movie $movie)
    {

    }

    public function toArray(): array
    {
        return [
            'id' => $this->movie->getAttribute('id'),
            'is_favorite' => $this->movie->isFavorite(),
            'external_id' => $this->movie->getAttribute('movie_external_id'),
            'title' => $this->movie->getAttribute('title'),
            'popular' => $this->movie->getAttribute('popularity'),
            'average' => $this->movie->getAttribute('vote_average'),
            'total' => $this->movie->getAttribute('vote_count'),
            'poster_image_url' => $this->movie->getImageUrl(),
            'backdrop_image_url' => $this->movie->getBackdropUrl(),
            'description' => $this->movie->getAttribute('overview'),
            'released_on' => Carbon::parse($this->movie->getAttribute('release_date'))
                ->format('M d Y'),
        ];
    }
}
