//@ts-nocheck
import { horaActual } from "../utils/funciones/funciones.js"

export const errGlobal = (err, req, res, next) => {
    if (err instanceof URIError && err.status === 400) {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - URI invalida (URL) - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: URI invalida (URL)'
        })
    }
    console.log(`[server - ${horaActual()}] Error de servidor (controlado por MW index) - ${err.message} - Estado: ${err.status ? err.status : 'No definido'}`)
    return res.status(err.status >= 400 && err.status <= 500 ? err.status : 500).json({
        error: `Error interno de servicio - ${err.status ? err.status : 'No definido'}`
    })
}