//@ts-nocheck
import { horaActual } from "../utils/funciones/funciones.js"

export const originErr = (err, req, res, next) => {
    if (err.message.includes('CORS')) {
        console.log(`[server - ${horaActual()}] Petición de origen descon ocido - Origen: ${req.headers.origin} - Desc: ${err.message}`)
        return res.status(403).json({
            error: err.message
        })
    }
    next(err)
}