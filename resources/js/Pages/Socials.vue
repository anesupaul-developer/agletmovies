<template>
    <MainLayout>
        <div class="bg-[#F2F2F2]">
            <div id="IndexPage" class="mt-3 max-w-[1400px] mx-auto px-2">
                <div class="">
                    <h1 class="font-bold pt-3 text-xl">Contact Info</h1>
                </div>

                <div class="mt-4 w-full h-full">
                    <div class="flex flex-col items-center pb-10">
                        <img class="w-24 mt-3 h-24 mb-3 rounded-full shadow-lg"
                             src="/images/my-image.jpeg" alt="Anesu image"/>
                        <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">Anesu Paul Ngirande</h5>
                        <span class="mt-1 text-sm text-gray-500">Backend Developer</span>
                        <span class="mt-1 text-sm text-gray-500">anesupaulngirande@gmail.com</span>
                        <span class="mt-1 text-sm text-gray-500">+263 788 089 444 | +263 772 982 812</span>
                        <div class="flex items-center mt-3">
                            <a href="https://github.com/anesupaul-developer"
                               class="inline-flex items-center px-4 py-2 text-sm font-medium text-center rounded-lg">
                                <Icon icon="grommet-icons:github" class="text-[20px]"/>
                            </a>
                            <a href="https://zw.linkedin.com/in/anesu-paul-ngirande-71904a170"
                               class="inline-flex items-center px-4 py-2 text-sm font-medium text-center rounded-lg">
                                <Icon icon="grommet-icons:linkedin" class="text-[20px]"/>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </MainLayout>
</template>

<script setup>

import MainLayout from "../Layouts/MainLayout.vue";
import Movie from "@/Components/Movie.vue";
import SliderPagination from "@/Components/SliderPagination.vue";
import {Icon} from "@iconify/vue";

</script>
