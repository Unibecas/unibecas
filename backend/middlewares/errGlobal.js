//@ts-nocheck
import { horaActual } from "../utils/funciones/funciones.js"

export const errGlobal = (err, req, res, next) => {
    console.log(`[server - ${horaActual()}] Error de servidor (controlado por MW index) - ${err.message} - Estado: ${err.statusCode}`)
    res.status(err.status >= 400 && err.status <= 500 ? err.status : 500).json({
        ok: false,
        error: `Error interno de servicio - ${err.status}`
    })
}