<template>
   <div v-if="items">
       <button :disabled="disablePreviousBtn" @click="previousPage" type="button" class="absolute top-0 left-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-prev>
        <span :class="disablePreviousBtn ? 'bg-gray-300' : 'bg-[#010101]' " class="inline-flex items-center justify-center w-10 h-10 rounded-full group-focus:ring-4 group-focus:ring-white group-focus:outline-none">
             <Icon icon="mdi:chevron-left" class=" text-white text-[40px]"/>
        </span>
       </button>
       <button :disabled="disableNextBtn" @click="nextPage" type="button" class="absolute top-0 right-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-next>
        <span :class="disableNextBtn ? 'bg-gray-300' : 'bg-[#010101]' " class="inline-flex items-center justify-center w-10 h-10 rounded-full group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <Icon icon="mdi:chevron-right" class=" text-white text-[40px]"/>
        </span>
       </button>
   </div>
</template>

<script setup>

import {Icon} from "@iconify/vue";
import { router } from '@inertiajs/vue3';
import {onMounted, ref, toRefs} from "vue";

const props = defineProps({
    items: Object,
    filters: Object
});

const disableNextBtn = ref(false);
const disablePreviousBtn = ref(false);

const { items, filters } = toRefs(props);

onMounted(() => {
    const currentPage = filters.value.page;

    if (currentPage >= items.value.last_page) {
        disableNextBtn.value = true;
    }

    if (currentPage <= 1) {
        disablePreviousBtn.value = true;
    }
});
const nextPage = () => {
    if (items.value.next_page_url) {
        router.get(items.value.next_page_url);
    }

    if (items.value.current_page + 1 === items.value.last_page) {
        disableNextBtn.value = true;
    }
};

const previousPage = () => {
    if (items.value.prev_page_url) {
        router.get(items.value.prev_page_url);
    }

    if (items.value.current_page <= 1) {
        disablePreviousBtn.value = true;
    }
};

</script>
