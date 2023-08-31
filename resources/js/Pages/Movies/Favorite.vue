<template>
    <MainLayout>
        <template v-slot:appsearch>
            <GlobalSearch routeName="favorite.movies" :filters="filters" placeholder="Search favorite movie by name ... "/>
        </template>

        <div class="bg-[#F9F9F9]">
            <div id="IndexPage" class="mt-3 max-w-[1400px] mx-auto px-2">
                <div class="">
                    <h1 class="font-bold pt-3 text-xl">My Favorite Movies</h1>
                </div>

                <div class="mb-3 border-1"></div>

                <div class="grid xl:grid-cols-5 lg:grid-cols-5 md:grid-cols-4 sm:grid-cols-3 grid-cols-2 gap-4 mt-4">
                    <div v-if="movies" v-for="movie in movies.data" :key="movie.id">
                        <Movie :movie="movie"/>
                    </div>

                    <SliderPagination v-if="movies" :items="movies" :filters="filters"/>
                </div>

            </div>
        </div>
    </MainLayout>
</template>

<script setup>

import MainLayout from "../../Layouts/MainLayout.vue";
import Movie from "../../Components/Movie.vue";
import GlobalSearch from "@/Components/GlobalSearch.vue";
import SliderPagination from "@/Components/SliderPagination.vue";


defineProps({
    movies: Object,
    filters: Object
})

</script>
