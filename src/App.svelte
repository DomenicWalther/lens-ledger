<script lang="ts">
    import Dropzone from "svelte-file-dropzone";
    let files: Array<string> = [];
    function getLast4DigitsFromString(string: string) {
        const re = /(\d{4})(?=\D*$)/;
        const match = string.match(re);
        if (!match) {
            return "No match found";
        }
        return match[0];
    }

    function handleFileSelect(e) {
        let returnArray = [];
        const { acceptedFiles } = e.detail;
        for (let file of acceptedFiles) {
            returnArray.push(getLast4DigitsFromString(file.name));
        }
        files = [...files, ...returnArray];
    }
</script>

<main class="container">
    <Dropzone on:drop={handleFileSelect} />
    <ol>
        {#each files as file}
            <li>{file}</li>
        {/each}
    </ol>
</main>
