<template>
    <div id="MainLayout" class="w-full fixed z-50">
        <div id="TopMenu" class="w-full bg-[#FAFAFA] border-b md:block hidden">
            <ul class="flex items-center justify-end text-sm text-yamblack font-light px-2 h-10 bg-[#FAFAFA] max-w-[1200px]">
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">Sell on AliExpress</li>
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">Cookie Preference</li>
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">Help</li>
                <li class="border-r border-r-gray-400 px-3 hover:text-redapple cursor-pointer">Buyer Protection</li>
                <li class="px-3 hover:text-[#FF4646] cursor-pointer">
                    <Icon icon="ic:sharp-install-mobile" class="fa-solid fa-mobile text-[17px]"/>
                    App
                </li>

                <li class="relative flex items-center px-2.5 hover:text-redapple h-full cursor-pointer"
                    :class="isAccountMenu ? 'bg-white border z-40 shadow-[0_15px_100px_40px_rgba(0,0,0,0.3)]' : 'border border-[#FAFAFA]'"
                    @mouseenter="isAccountMenu = true"
                    @mouseleave="isAccountMenu = false">
                    <Icon icon="material-symbols:person" class="text-[17px] pr-0.5" aria-hidden="true"/>
                    Account
                    <Icon icon="mdi:chevron-down" class="text-[15px] ml-5"/>

                    <div id="AccountMenu"
                         class="bg-white absolute w-[220px] text-yamblack z-40 top-[38px] -left-[100px] border-x border-b"
                         v-if="isAccountMenu">
                        <div v-if="true">
                            <div class="text-semibold text-[15px] px-3 my-4">Welcome to Ali Express!</div>
                            <div class="flex items-center gap-1 mb-3 px-3">
                                <NavLink href="/auth" active:true
                                         classes="text-[16px] bg-redapple hover:bg-orange-700 hover:text-white w-full text-center rounded-sm text-white font-semibold p-2">
                                    Register
                                </NavLink>

                                <NavLink href="/auth" active:true
                                         classes="text-[16px] bg-rose-100 hover:bg-red-600 hover:text-white text-redapple w-full text-center rounded-sm text-white font-semibold p-2">
                                    Sign In
                                </NavLink>
                            </div>
                        </div>

                        <div class="border-b border-gray-200"></div>
                        <ul class="bg-white">
                            <li @click="navigateTo('/orders')" class="text-[13px] w-full py-2 px-4 hover:bg-gray-200">My
                                Orders
                            </li>
                            <li v-if="true" class="text-[13px] w-full py-2 px-4 hover:bg-gray-200">Sign out</li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div> <!-- End of TopMenu -->

        <div id="MainHeader" class="flex items-center w-full bg-white">
            <div id="MainHeader1"
                 class="flex lg:justify-start justify-between gap-10 max-w-[1150px] w-full px-3 py-5 mx-auto">
                <NavLink href="" classes="min-w-[170px] -mt-7">
                    <img src="/images/logo.svg" width="170" alt="logo"/>
                </NavLink>

                <div id="SearchBar" class="max-w-[700px] w-full md:block hidden">
                    <div class="relative">
                        <div class="flex items-center border-2 border-none rounded-md w-full">
                            <div class="absolute -inset-y-0 right-10 flex items-center pl-3 pointer-events-none">
                                <Icon v-if="isSearching" icon="eos-icons:loading"
                                      class="text-redapple mr-2 text-[25px]"/>
                            </div>

                            <input
                                class="w-full placeholder-gray-400 border-redapple text-sm pl-3 focus:outline-none focus:border-none"
                                placeholder="kitchen accessories"
                                v-model="searchItem"
                                type="text"/>

                            <button class="flex items-center h-auto p-2.5 px-2 bg-redapple">
                                <Icon icon="ph:magnifying-glass" class="text-[20px] text-white"/>
                            </button>
                        </div>

                        <div class="flex items-center">
                            <ul class="flex items-start justify-start text-xs text-yamblack font-light py-0">
                                <li class="border-r pr-1.5  border-r-gray-400 hover:text-redapple cursor-pointer">
                                    human hair wigs
                                </li>
                                <li class="border-r border-r-gray-400 px-1.5 hover:text-redapple cursor-pointer">
                                    necklace or women
                                </li>
                                <li class="border-r border-r-gray-400 px-1.5 hover:text-redapple cursor-pointer">
                                    apple watch band
                                </li>
                                <li class="border-r border-r-gray-400 px-1.5 hover:text-redapple cursor-pointer">
                                    mystery box
                                </li>
                                <li class="border-r border-r-gray-400 px-1.5 hover:text-redapple cursor-pointer">
                                    nails
                                </li>
                                <li class="px-1.5 hover:text-redapple cursor-pointer">
                                    fishing
                                </li>
                            </ul>
                        </div>

                        <div id="SearchResults" class="absolute bg-gray-50 max-w-[700px] h-auto w-full">
                            <div v-if="false" class="p-1">
                                <NavLink href="/item/1"
                                         classes="flex items-center justify-between w-full cursor-pointer hover:bg-gray-200">
                                    <div class="flex items-center">
                                        <!--                                        <img src="https://picsum.photos/id/237/300/300" width="40" alt="image"/>-->
                                        <div class="truncate ml-2 font-semibold">TESTING</div>
                                    </div>

                                    <div class="truncate">$ 98.99</div>
                                </NavLink>
                            </div>
                        </div> <!-- Search Results -->
                    </div>
                </div> <!-- End of Search Bar -->

                <div id="ShoppingCart" class="max-h-[35px]">
                    <NavLink href="/shopping-cart" class="flex items-center">
                        <button
                            @mouseenter="isCartHover = true"
                            @mouseleave="isCartHover = false"
                            class="relative md:block hidden">
                        <span
                            class="absolute flex items-center bg-redapple justify-center -right-[3px] top-0 px-0.5 rounded-full text-white min-w-[17px] h-[17px] text-xs">
                           0
                        </span>
                            <span class="min-w-[40px]">
                           <Icon :color="isCartHover ? '#FF4646' : ''" icon="ph:shopping-cart-simple"
                                 class="text-[33px]"/>
                       </span>
                        </button>
                    </NavLink>

                    <button @click="userStore.isMenuOverlay = true"
                            class="md:hidden block rounded-full p-1.5 -mt-[5px] hover:bg-gray-200">
                        <Icon icon="ic:baseline-menu" class="text-4xl"/>
                    </button>
                </div> <!-- End of Shopping Cart -->
            </div> <!-- End of Main Header 1 -->
        </div> <!-- End of Main Header -->
    </div>

    <Loading v-if="userStore.isLoading"/>

    <div class="lg:pt-[150px] md:pt-[130px] pt-[80px]"/>
    <slot class="bg-[#F2F2F2]"/>

    <Footer v-if="!userStore.isLoading"/>
</template>

<script setup>
import {ref} from "vue";
import {Icon} from '@iconify/vue';
import NavLink from "../Components/NavLink.vue";
import Loading from "../Components/Loading.vue";
import Footer from "../Components/Footer.vue";
import {useUserStore} from "../Stores/UserStore.js";

let searchItem = ref('');
let searchItems = ref([]);
let isSearching = ref(false);
let isAccountMenu = ref(false);
let isCartHover = ref(false);

let userStore = useUserStore();


</script>
