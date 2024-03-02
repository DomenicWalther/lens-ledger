<script lang="ts">
	import * as Table from '$lib/components/ui/table';
	import { imageList } from '$lib/store';
	import type { orderType } from '$lib/types';
	const deleteRow = (deleteIndex: number) => {
		imageList.update(currentItems =>
			currentItems.filter((_: orderType, i: number) => i !== deleteIndex)
		);
	};

	const updateOrder = (index: number, event: Event) => {
		const newAmount = parseFloat((event.target as HTMLInputElement).value);
		imageList.update(currentItems =>
			currentItems.map((item, idx) =>
				idx === index
					? { ...item, amount: newAmount, price: newAmount * 25 }
					: item
			)
		);
	};
</script>

<Table.Root>
	<Table.Caption>A list of your recent invoices.</Table.Caption>
	<Table.Header>
		<Table.Row>
			<Table.Head class="w-[100px]">Bildnummer</Table.Head>
			<Table.Head class="w-[100px]">Größe</Table.Head>
			<Table.Head>Farbe</Table.Head>
			<Table.Head>Anzahl</Table.Head>
			<Table.Head>Beschreibung</Table.Head>
			<Table.Head class="text-right">Preis</Table.Head>
			<Table.Head class="text-right">Actions</Table.Head>
		</Table.Row>
	</Table.Header>
	<Table.Body>
		{#each $imageList as image, i (i)}
			<Table.Row>
				<Table.Cell class="font-medium">
					<input type="text" value={image.imageNumber} />
				</Table.Cell>
				<Table.Cell class="font-medium">
					<select class="bg-white rounded-none">
						<option>13x18cm</option>
						<option>20x30cm</option>
					</select>
				</Table.Cell>
				<Table.Cell>
					<select>
						<option>Farbe</option>
						<option>Mischton</option>
						<option>Braunton</option>
						<option>SchwarzWeiß</option>
					</select>
				</Table.Cell>
				<Table.Cell>
					<input
						type="text"
						value={image.amount}
						on:change={event => updateOrder(i, event)}
					/>
				</Table.Cell>
				<Table.Cell>
					<input type="text" value={image.description} />
				</Table.Cell>
				<Table.Cell class="text-right">{image.price}€</Table.Cell>
				<Table.Cell class="text-right">
					<button on:click={() => deleteRow(i)}>Löschen</button>
				</Table.Cell>
			</Table.Row>
		{/each}
	</Table.Body>
</Table.Root>

<style>
	select {
		-webkit-appearance: none;
		appearance: none;
	}
</style>
