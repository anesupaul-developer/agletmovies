<template>
    <div id="SearchBar" class="max-w-[700px] w-full md:block hidden">
        <div class="relative">
            <div class="flex items-center border-2 border-none rounded-md w-full">
                <div class="absolute -inset-y-0 right-10 flex items-center pl-3 pointer-events-none">
                    <Icon v-if="isSearching" icon="eos-icons:loading"
                          class="text-redapple mr-2 text-[25px]"/>
                </div>

                <input
                    class="w-full placeholder-gray-400 border-redapple text-sm pl-3 focus:outline-none focus:border-none"
                    placeholder="Search for a movie ... "
                    v-model="search"
                    type="text"/>
            </div>
        </div>
    </div> <!-- End of Search Bar -->
</template>

<script setup>

import { router } from '@inertiajs/vue3';
import {onMounted, ref, toRefs, watch} from "vue";
import {throttle} from "lodash";
import {Icon} from "@iconify/vue";

const props = defineProps(['routeName', 'filters', 'placeholder']);

const { routeName, filters, placeholder } = toRefs(props);

let search = ref('');
let isSearching = ref(false);
let placeholderText = ref('');

onMounted(() => {
    const query = filters.value.search;
    if (query) {
        search.value = query;
    }

    if (placeholder.value) {
        placeholderText.value = placeholder.value;
    }
});

watch(search, throttle(function(value) {
    router.get(route(routeName.value),{search:value},{
        preserveState:true,
        replace:true
    });
}, 300));

</script>
