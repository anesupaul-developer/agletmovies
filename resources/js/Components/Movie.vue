<template>
    <div :id="`MovieComponent-${movie.id}`"
         class="bg-white inline-block rounded cursor-pointer hover:shadow-[0_0_10px_3px_rgba(0,0,0,0.15)]">
        <div class="relative bg-[#FD384F] rounded-l">
            <button v-if="showFavorite" class="absolute left-0 top-0 text-red-900 fold-bold p-1 text-[12px]" @click="toggleFavorite(movie.id)">
                <Icon icon="material-symbols:favorite-rounded" class="text-[24px]" :class="movie.is_favorite ? 'text-yellow-300' : 'text-white'"/>
            </button>
            <img :src="movie.poster_image_url" class="rounded-t" :alt="movie.title" loading="lazy"/>
        </div>
        <div>
            <h1 class="text-center p-2.5 font-semibold text-sm">{{ movie.title }}</h1>
            <div class="flex justify-between items-center pl-6 pr-6 mt-3">
                <span class="text-center m-2.5 p-1.5 text-xs">{{ movie.released_on }}</span>
                <button @click="showMovieDetails" type="button" class="text-white bg-grey-400 hover:bg-gray-100 font-medium rounded-full text-sm p-2.5 text-center inline-flex items-center mr-2">
                    <Icon icon="material-symbols:visibility-outline-rounded" class="text-gray-800 text-[24px]"/>
                </button>
            </div>
        </div>
    </div>

    <MovieModal :movie="movie" :show="isModalOpen" @close="closeModal"/>
</template>

<script setup>

import {ref, toRefs} from "vue";
import {Icon} from "@iconify/vue";
import { router } from '@inertiajs/vue3';
import MovieModal from "@/Components/MovieModal.vue";

const props = defineProps(['movie', 'showFavorite']);

const {movie, showFavorite} = toRefs(props);

const isModalOpen = ref(false);

const showMovieDetails = () => {
    isModalOpen.value = true;
};

const closeModal = () => {
    isModalOpen.value = false;
};

function toggleFavorite(movie_id) {
    router.post(route('favorite.movies.store'), {movie_id});
}

</script>
