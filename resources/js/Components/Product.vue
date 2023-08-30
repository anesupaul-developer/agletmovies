<template>
    <div :id="`ProductComponent-${product.id}`"
         class="bg-white inline-block rounded cursor-pointer hover:shadow-[0_0_10px_3px_rgba(0,0,0,0.15)]">
        <NavLink href="/items/${{product.id}}">
            <div class="absolute bg-[#FD384F] rounded-l">
                <span class="text-center text-white fold-bold p-1 text-[12px]">{{discount}}%</span>
            </div>
            <img :src="product.url" class="rounded-t" :alt="product.name"/>
            <div id="ProductDetails">
                <span class="flex items-center justify-start gap-3 px-1 pt-1">
                    <span class="text-[#FF6674] font-semibold">$ {{priceComputed}}</span>
                    <span class="text-gray-500 text-sm text-light line-through">$ {{oldComputed}}</span>
                </span>
            </div>
        </NavLink>
    </div>
</template>

<script setup>
import {computed, toRefs} from "vue";
import NavLink from "./NavLink.vue";

const props = defineProps(['product']);

const {product} = toRefs(props);

const priceComputed = computed(() => {
    return (product.value.price / 100).toFixed(2);
});

const oldComputed = computed(() => {
    return (product.value.oldPrice / 100).toFixed(2);
});

const discount = computed(() => {
    return Math.floor(((product.value.oldPrice - product.value.price)/ product.value.oldPrice) * 100);
});
</script>
