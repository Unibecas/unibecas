//@ts-nocheck

export function horaActual() {
    return new Date().toLocaleString()
}

export function chequeoComodines(primero, segundo = undefined) {
    if ((primero && (primero.includes('%') || primero.includes('_'))) || (segundo && (segundo.includes('%') || segundo.includes('_')))) {
        return true
    }
    return false
}