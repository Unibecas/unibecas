//@ts-nocheck

export function horaActual() {
    return new Date().toLocaleString()
}

export function validarIdEntero(id) {

    const num = Number(id)
    if (!Number.isInteger(Number(num)) || Number(num) < 1 || Number(num) > 2147483647) {
        return false
    }

    return num
}