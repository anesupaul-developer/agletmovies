<template>
    <!-- Main modal -->
    <div v-if="show" id="staticModal" class="fixed inset-0 flex items-center justify-center z-50 w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
        <div class="relative w-full max-w-2xl max-h-full">
            <!-- Modal content -->
            <div class="relative bg-white rounded-lg shadow dark:bg-gray-700 mb-3">
                <!-- Modal header -->
                <div class="flex items-start justify-between p-4 border-b rounded-t dark:border-gray-600">
                    <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                        {{movie.title}}
                    </h3>
                    <button @click="closeModal" type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ml-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="staticModal">
                        <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                        </svg>
                        <span class="sr-only">Close modal</span>
                    </button>
                </div>
                <!-- Modal body -->
                <img class="bg-cover max-h-full w-full" :src="movie.backdrop_image_url" :alt="movie.title" loading="lazy"/>
                <div class="pl-6 pr-6 pt-3 space-y-6">
                    <p class="text-[14px] leading text-gray-900">
                        {{movie.description}}
                    </p>
                </div>

                <div class="flex justify-between items-center pl-6 pr-6 mt-3">
                    <div class="font-bold text-sm">Released On</div>
                    <div class="text-sm">{{movie.released_on}}</div>
                </div>

                <div class="flex justify-between items-center pl-6 pr-6 mt-3">
                    <div class="font-bold text-sm">Popular</div>
                    <div class="text-sm">{{movie.popular}}</div>
                </div>

                <div class="flex justify-between items-center pl-6 pr-6 mt-3">
                    <div class="font-bold text-sm">Average Count</div>
                    <div class="text-sm">{{movie.average}}</div>
                </div>

                <div class="flex justify-between items-center pl-6 pr-6 mt-3">
                    <div class="font-bold text-sm">Vote Count</div>
                    <div class="text-sm">{{movie.total}}</div>
                </div>

            </div>
        </div>
    </div>
</template>

<script setup>

import {toRefs} from "vue";

const props = defineProps(['movie', 'show']);

const {movie, show} = toRefs(props);

const emit = defineEmits(['close']);

const closeModal = () => {
    emit('close');
};

</script>
