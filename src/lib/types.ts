export type orderType = {
	imageNumber: string,
	size: string,
	color: string,
	amount: number,
	description: string,
	price: number,
	isMainImage: boolean,
	printMethod: printPossibilities,
}

export type printPossibilities = 'Fotoabzug' | 'Leinwand' | 'Platte' | 'Leinenstruktur'
