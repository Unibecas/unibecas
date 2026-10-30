//@ts-nocheck 
import { horaActual } from '../utils/funciones/funciones.js'

export const expressJsonify = (err, req, res, next) => {
    if (err.type === 'entity.parse.failed') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Intento de envío de JSON invalido - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            ok: false,
            error: 'Error de sintaxis: JSON invalido'
        })
    }
    next(err)
}