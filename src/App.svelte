<script lang="ts">
    import Dropzone from "svelte-file-dropzone";
    type File = {
        lastModified: number;
        name: string;
        path: string;
        size: number;
        type: string;
        webkitRelativePath: string;
    };
    let files: Array<File> = [];

    function handleFileSelect(e) {
        const { acceptedFiles } = e.detail;
        console.log(acceptedFiles);
        files = [...files, ...acceptedFiles];
    }
</script>

<main class="container">
    <Dropzone on:drop={handleFileSelect} />
    <ol>
        {#each files as file}
            <li>{file.name}</li>
        {/each}
    </ol>
</main>
