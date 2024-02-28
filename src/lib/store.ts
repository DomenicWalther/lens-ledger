import { writable } from "svelte/store";
import type { orderType } from "./types";

export const imageList = writable<orderType[]>([])


