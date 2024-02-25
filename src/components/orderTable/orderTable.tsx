import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableCaption,
    TableRow,
} from "@/components/ui/table"


function orderTable() {
    return (
        <Table>
            <TableCaption>Auflistung aller Bilder</TableCaption>
            <TableHeader>
                <TableRow>
                    <TableHead className="w-[100px]">Anzahl</TableHead>
                    <TableHead className="w-[100px]">Bildnummer</TableHead>
                    <TableHead>Größe</TableHead>
                    <TableHead>Farbe</TableHead>
                    <TableHead className="text-right">Kosten</TableHead>
                </TableRow>
            </TableHeader>
            <TableBody>
                <TableRow>
                    <TableCell className="font-medium">1</TableCell>
                    <TableCell >004</TableCell>
                    <TableCell>13x18cm</TableCell>
                    <TableCell>Farbe</TableCell>
                    <TableCell className="text-right">25€</TableCell>
                </TableRow>
            </TableBody>
        </Table>

    )
}

export default orderTable
