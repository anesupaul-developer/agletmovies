<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('movie_external_id')->unique();
            $table->string('title');
            $table->string('backdrop_path');
            $table->string('original_language')->default('en');
            $table->string('original_title');
            $table->text('overview');
            $table->decimal('popularity', 18, 2)->nullable();
            $table->string('poster_path');
            $table->date('release_date');
            $table->decimal('vote_average', 18, 2)->nullable();
            $table->integer('vote_count')->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('movies');
    }
};
