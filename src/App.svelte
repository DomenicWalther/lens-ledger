<script lang="ts">
    import Dropzone from "svelte-file-dropzone";
    import ImageTable from "$lib/components/ImageTable.svelte";
    import { imageList } from "$lib/store";
    import { getLast4DigitsFromString } from "$lib/helpers";
    function handleFileSelect(e) {
        let returnArray: Array<string> = [];
        const { acceptedFiles } = e.detail;
        for (let file of acceptedFiles) {
            let fileDigits = getLast4DigitsFromString(file.name);
            if (fileDigits !== undefined) {
                returnArray.push(fileDigits);
            }
        }
        let orderList = returnArray.map((item) => {
            return {
                imageNumber: item,
                size: "13x18cm",
                color: "Farbe",
                amount: 1,
                description: " ",
                price: 25,
            };
        });
        imageList.update((currentItems) => [...currentItems, ...orderList]);
    }
</script>

<main class="">
    {#if $imageList.length > 0}
        <ImageTable />
        <button
            class="px-10 py-5 bg-purple-900 text-white font-bold w-full fixed bottom-0"
            >Auftrag abschließen</button
        >
        <select class="bg-white rounded-none"
            ><option>13x18cm</option><option>20x30cm</option></select
        >
    {/if}

    {#if $imageList.length === 0}
        <Dropzone
            on:drop={handleFileSelect}
            containerClasses="fixed bottom-0 w-full"
        />
    {/if}
</main>
