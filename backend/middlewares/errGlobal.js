//@ts-nocheck
import { horaActual } from "../utils/funciones/funciones.js"

export const errGlobal = (err, req, res, next) => {
    console.log(`[server - ${horaActual()}] Error de servidor (controlado por MW index) - ${err.message}`)
    res.status(500).json({
        ok: false,
        error: 'Error interno de servicio - 500'
    })
}