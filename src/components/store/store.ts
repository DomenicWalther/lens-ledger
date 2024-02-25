import { create } from 'zustand';

interface orderTableState {
    imageNumbers: number[];
    setImages: (imageNumbers: number[]) => void;
}

export const useOrderTableStore = create<orderTableState>()((set) => ({
    imageNumbers: [],
    setImages: (imageNumbers: number[]) => set({ imageNumbers }),
}))
