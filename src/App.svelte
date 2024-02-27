<script lang="ts">
    import Greet from "./lib/Greet.svelte";
    import Dropzone from "svelte-file-dropzone";

    let files = {
        accepted: [],
        rejected: [],
    };

    function handleFileSelect(e) {
        console.log("FileSelection");
        const { acceptedFiles, fileRejections } = e.detail;
        files.accepted = [...files.accepted, ...acceptedFiles];
        files.rejected = [...files.rejected, ...fileRejections];
        console.log(files);
    }
</script>

<main class="container">
    <h1>Welcome to Tauri!</h1>
    <Dropzone on:drop={handleFileSelect} />
    <ol>
        {#each files.accepted as file}
            <li>{file}</li>
        {/each}
    </ol>

    <p class="font-bold">
        Click on the Tauri, Vite, and Svelte logos to learn more.
    </p>

    <div class="row">
        <Greet />
    </div>
</main>

<style>
    .logo.vite:hover {
        filter: drop-shadow(0 0 2em #747bff);
    }

    .logo.svelte:hover {
        filter: drop-shadow(0 0 2em #ff3e00);
    }
</style>

