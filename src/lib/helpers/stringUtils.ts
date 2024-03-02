
export function getLast4DigitsFromString(string: string) {
    const re = /(\d{4})(?=\D*$)/;
    const match = string.match(re);
    if (match !== null) {
        return match[0];
    }
}

