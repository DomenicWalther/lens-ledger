<script lang="ts">
    import Dropzone from "svelte-file-dropzone";
    import ImageTable from "$lib/components/ImageTable.svelte";
    import { imageList } from "$lib/store";
    function getLast4DigitsFromString(string: string) {
        const re = /(\d{4})(?=\D*$)/;
        const match = string.match(re);
        if (match !== null) {
            return match[0];
        }
    }

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
                color: "Farbe",
                amount: 1,
                description: " ",
                price: 25,
            };
        });
        imageList.update((currentItems) => [...currentItems, ...orderList]);
    }
</script>

<main class="container">
    {#if $imageList.length > 0}
        <ImageTable />
    {/if}
    <Dropzone
        on:drop={handleFileSelect}
        containerClasses="fixed bottom-0 w-full"
    />
</main>
