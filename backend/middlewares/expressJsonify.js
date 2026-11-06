//@ts-nocheck 
import { horaActual } from '../utils/funciones/funciones.js'

export const expressJsonify = (err, req, res, next) => {
    if (err.type === 'entity.parse.failed') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Intento de envío de JSON invalido - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: JSON invalido'
        })
    } else if (err.type === 'entity.too.large') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Formato JSON demasiado largo - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: JSON demasiado largo'
        })
    } else if (err.type === 'charset.unsupported') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Formato de texto JSON invalido (charset) - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: Formato charset para JSON invalido'
        })
    } else if (err.type === 'encoding.unsupported') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Cabecera de codificación es invalida (header charset) - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: Codificacion y formato del body JSON es invalida'
        })
    } else if (err.type === 'parameters.too.many') {
        console.log(`[cliente - ${horaActual()}] - Error de cliente - Exceso de queryparams (?a=b&...) - origen: ${req.headers.origin || req.headers.referer} - Estado: ${err.status}`)
        return res.status(err.status).json({
            error: 'Error de sintaxis: Exceso de parametros en la URL'
        })
    }
    next(err)
}