<script lang="ts">
    import * as Table from "$lib/components/ui/table";
    import { imageList } from "$lib/store";
</script>

<Table.Root>
    <Table.Caption>A list of your recent invoices.</Table.Caption>
    <Table.Header>
        <Table.Row>
            <Table.Head class="w-[100px]">Bildnummer</Table.Head>
            <Table.Head class="w-[100px]">Größe</Table.Head>
            <Table.Head>Farbe</Table.Head>
            <Table.Head>Amount</Table.Head>
            <Table.Head>Beschreibung</Table.Head>
            <Table.Head class="text-right">Amount</Table.Head>
            <Table.Head class="text-right">Actions</Table.Head>
        </Table.Row>
    </Table.Header>
    <Table.Body>
        {#each $imageList as image, i (i)}
            <Table.Row>
                <Table.Cell class="font-medium">{image.imageNumber}</Table.Cell>
                <Table.Cell class="font-medium">{image.size}</Table.Cell>
                <Table.Cell>{image.color}</Table.Cell>
                <Table.Cell>{image.amount}</Table.Cell>
                <Table.Cell>{image.description}</Table.Cell>
                <Table.Cell class="text-right">{image.price}€</Table.Cell>
                <Table.Cell class="text-right">Actions</Table.Cell>
            </Table.Row>
        {/each}
    </Table.Body>
</Table.Root>
