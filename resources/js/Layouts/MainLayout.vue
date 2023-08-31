<template>
    <div id="MainLayout" class="w-full fixed z-50">
        <div id="TopMenu" class="w-full bg-[#FAFAFA] border-b md:block hidden">
            <ul class="flex items-center justify-end text-sm text-yamblack font-light px-2 h-10 bg-[#FAFAFA] max-w-[1200px]">
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">
                    <a :href="route('favorite.movies')">Favorite</a>
                </li>
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">
                    <a :href="route('movies')">Watch</a>
                </li>
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">
                    <a :href="route('socials')">Socials</a>
                </li>
                <li class="relative flex items-center px-2.5 hover:text-redapple h-full cursor-pointer"
                    :class="isAccountMenu ? 'bg-white border z-40 shadow-[0_15px_100px_40px_rgba(0,0,0,0.3)]' : 'border border-[#FAFAFA]'"
                    @mouseenter="isAccountMenu = true"
                    @mouseleave="isAccountMenu = false">
                    <Icon icon="material-symbols:person" class="text-[17px] pr-0.5" aria-hidden="true"/>
                    Account ({{ $page.props.auth.user.name }})
                    <Icon icon="mdi:chevron-down" class="text-[15px] ml-5"/>

                    <div id="AccountMenu"
                         class="bg-white absolute w-[220px] text-yamblack z-40 top-[38px] -left-[100px] border-x border-b"
                         v-if="isAccountMenu">

                        <div class="border-b border-gray-200"></div>
                        <ul class="bg-white">
                            <DropdownLink :href="route('logout')" method="post" as="button">
                                Sign Out
                            </DropdownLink>
                        </ul>
                    </div>
                </li>
            </ul>
        </div> <!-- End of TopMenu -->

        <div id="MainHeader" class="flex items-center w-full bg-[#010001]">
            <div id="MainHeader1"
                 class="flex lg:justify-start justify-between gap-10 max-w-[1150px] w-full px-3 py-5 mx-auto">
                <NavLink href="" classes="min-w-[170px] -mt-7">
                    <img src="/images/logo.svg" width="170" alt="logo"/>
                </NavLink>

                <slot name="appsearch"/>
            </div> <!-- End of Main Header 1 -->
        </div> <!-- End of Main Header -->
    </div>

    <div class="lg:pt-[150px] md:pt-[130px] pt-[80px]"/>
    <slot class="bg-[#F2F2F2]"/>
</template>

<script setup>
import {ref} from "vue";
import {Icon} from '@iconify/vue';
import NavLink from "../Components/NavLink.vue";
import DropdownLink from "@/Components/DropdownLink.vue";

let isAccountMenu = ref(false);
defineProps({
    filters: Object
});
</script>
