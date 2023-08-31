<template>
    <MainLayout>
        <template v-slot:appsearch>
            <GlobalSearch :routeName="'movies'" :filters="filters" placeholder="Search movie by name ... "/>
        </template>
        <div class="bg-[#F2F2F2]">
            <div id="IndexPage" class="mt-3 max-w-[1400px] mx-auto px-2">
                <div class="">
                    <h1 class="font-bold pt-3 text-xl">Movies</h1>
                </div>

                <div class="grid xl:grid-cols-5 lg:grid-cols-5 md:grid-cols-4 sm:grid-cols-3 grid-cols-2 gap-4 mt-4">
                    <div v-if="movies" v-for="movie in movies.data" :key="movie.id">
                        <Movie :movie="movie" :showFavorite="true"/>
                    </div>
                    <SliderPagination v-if="movies" :items="movies" :filters="filters"/>
                </div>

                <div class="mb-3 border-1"></div>

            </div>
        </div>
    </MainLayout>
</template>

<script setup>

import MainLayout from "../../Layouts/MainLayout.vue";
import {Icon} from "@iconify/vue";
import NavLink from "../../Components/NavLink.vue";
import Movie from "../../Components/Movie.vue";
import SliderPagination from "@/Components/SliderPagination.vue";
import {toRefs} from "vue";
import GlobalSearch from "@/Components/GlobalSearch.vue";

defineProps({
    movies: Object,
    filters: Object
});


</script>
