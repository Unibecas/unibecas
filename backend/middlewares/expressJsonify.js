//@ts-nocheck 
import { horaActual } from '../utils/funciones/funciones.js'

export const expressJsonify = (err, req, res, next) => {
    if (!err.message.includes('CORS') && err instanceof SyntaxError && err.body) {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Intento de envío de JSON invalido - origen: ${req.headers.origin || req.headers.referer}`)
        return res.status(400).json({
            ok: false,
            error: 'Error de sintaxis: JSON invalido'
        })
    }
    next(err)
}