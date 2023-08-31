<template>
    <div :id="`MovieComponent-${movie.id}`"
         class="bg-white inline-block rounded cursor-pointer hover:shadow-[0_0_10px_3px_rgba(0,0,0,0.15)]">
        <div class="relative bg-[#FD384F] rounded-l">
            <button class="absolute left-0 top-0 text-red-900 fold-bold p-1 text-[12px]" @click="toggleFavorite(movie.id)">
                <Icon icon="material-symbols:favorite-rounded" class="text-white text-[24px]" :class="movie.is_favorite ? 'text-orange-500' : ''"/>
            </button>
            <img :src="movie.poster_image_url" class="rounded-t" :alt="movie.title"/>
        </div>
        <div>
            <h1 class="text-center p-2.5 font-semibold text-sm">{{ movie.title }}</h1>
            <p class="text-center m-2.5 p-1.5 text-xs">{{ movie.released_on }}</p>
        </div>
    </div>
</template>

<script setup>

import {computed, toRefs} from "vue";
import NavLink from "./NavLink.vue";
import {Icon} from "@iconify/vue";
import { router } from '@inertiajs/vue3';

const props = defineProps(['movie']);

const {movie} = toRefs(props);

function toggleFavorite(movie_id) {
    router.post(route('favorite.movies.store'), {movie_id});
}

</script>
