<template>
    <MainLayout>
        <div class="bg-[#F2F2F2]">
            <div id="IndexPage" class="mt-3 max-w-[1400px] mx-auto px-2">
                <div class="grid grid-cols-5 gap-4 pt-3 pr-3 pl-3 pb-10">
                    <div class="col-span-1 text-gray-600 bg-white rounded-xl p-3">
                        <div class="flex items-center justify-start pr-3">
                            <Icon icon="ic:outline-list" class="text-[28px]"></Icon>
                            <h3 class="text-black font-extrabold text-[14px] pl-3">Categories</h3>
                        </div>

                        <li class="flex w-full pt-3 font-opensans" v-for="category in categories">
                            <a class="flex" href="{{category.link}}">
                                <Icon :icon="category.icon" class="text-[24px]"/>
                                <span class="text-[12px] pl-3 text-[#222222] text-center pt-1">{{ category.name }}</span>
                            </a>
                        </li>
                    </div> <!-- End of category section -->


                    <div class="col-span-3">
                        <div class="flex justify-start items-center mt-3 gap-6 font-extrabold">
                            <NavLink href="" class="hover:text-redapple">Plus</NavLink>
                            <NavLink href="" class="hover:text-redapple">Cool Home Gadgets</NavLink>
                            <NavLink href="" class="hover:text-redapple">Super Deals</NavLink>
                            <NavLink href="" class="hover:text-redapple">New User Zone</NavLink>
                        </div>
                    </div>
                    <div class="col-span-1"></div>
                </div> <!-- end of 1st section with category and slider -->

                <div class="grid xl:grid-cols-6 lg:grid-cols-5 md:grid-cols-4 sm:grid-cols-3 grid-cols-2 gap-4 mt-4">
                    <div v-if="products" v-for="product in products" :key="product">
                        <ProductComponent :product="product"/>
                    </div>
                </div>
            </div>
        </div>
    </MainLayout>
</template>

<script setup>

import MainLayout from "../Layouts/MainLayout.vue";
import {Icon} from "@iconify/vue";
import {categories} from "../Stores/Categories.js";
import {products} from "../Stores/Products.js";
import NavLink from "../Components/NavLink.vue";
import ProductComponent from "../Components/Product.vue";

</script>
