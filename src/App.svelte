<script lang="ts">
	import Dropzone from 'svelte-file-dropzone';
	import ImageTable from '$lib/components/ImageTable.svelte';
	import { imageList } from '$lib/store';
	import { getLast4DigitsFromString } from '$lib/helpers';
	import { Toaster } from '$lib/components/ui/sonner';
	import { toast } from 'svelte-sonner';
	import type { printPossibilities } from '$lib/types';

	function handleFileSelect(e: CustomEvent<any>) {
		let returnArray: Array<string> = [];
		const { acceptedFiles } = e.detail;
		for (let file of acceptedFiles) {
			let fileDigits = getLast4DigitsFromString(file.name);
			if (fileDigits !== undefined) {
				returnArray.push(fileDigits);
			} else {
				toast('Fehler beim Auslesen der Bildnummer!');
			}
		}
		let orderList = returnArray.map(item => {
			return {
				imageNumber: item,
				size: '13x18cm',
				color: 'Farbe',
				amount: 1,
				description: ' ',
				price: 25,
				isMainImage: false,
				printMethod: 'Fotoabzug' as printPossibilities,
			};
		});
		imageList.update(currentItems => [...currentItems, ...orderList]);
	}
</script>

<Toaster />
<main class="w-full overflow-hidden">
	{#if $imageList.length > 0}
		<ImageTable />
		<div class="flex flex-grow justify-between w-full fixed bottom-0">
			<div class="w-full h-full">
				<Dropzone on:drop={handleFileSelect} />
			</div>
			<button class="w-full py-[20px] bg-purple-600 text-white font-bold">
				Auftrag abschließen
			</button>
		</div>
	{/if}

	{#if $imageList.length === 0}
		<Dropzone
			on:drop={handleFileSelect}
			containerClasses="fixed bottom-0 w-full"
		/>
	{/if}
</main>
