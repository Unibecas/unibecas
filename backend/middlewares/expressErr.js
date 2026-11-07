//@ts-nocheck
import { horaActual } from "../utils/funciones/funciones.js"

export const expressErr = (err, req, res, next) => {
    if (err instanceof URIError && err.status === 400) {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - URI invalida (URL) - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: URI invalida (URL)'
        })
    } else if (err.name === 'BadRequestError') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - BadRequestError (JSON invalido) - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: JSON invalido'
        })
    }
    next(err)
}