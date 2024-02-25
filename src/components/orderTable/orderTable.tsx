import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableCaption,
    TableRow,
} from "@/components/ui/table"
import { useOrderTableStore } from "../store/store"


function orderTable() {
    const orders = useOrderTableStore((state) => state.imageNumbers)
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
                {orders.map((order, index) => {
                    return (
                        <TableRow>
                        <TableCell className="font-medium">1</TableCell>
                        <TableCell >{order}</TableCell>
                        <TableCell>13x18cm</TableCell>
                        <TableCell>Farbe</TableCell>
                        <TableCell className="text-right">25€</TableCell>
                    </TableRow>
                    )
                })}

            </TableBody>
        </Table>

    )
}

export default orderTable
