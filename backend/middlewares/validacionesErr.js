//@ts-nocheck
import { ZodError } from "zod"
import { ErrorValidacion } from "../utils/errores/errorcharcount.js"
import { horaActual } from "../utils/funciones/funciones.js"

export const validacionesErr = (err, req, res, next) => {
    if (err instanceof ZodError) {
        return res.status(400).json({
            error: `Error validación de campos- Columna: ${err.issues[0].path} - Info: ${err.issues[0].message}`
        })
    } else if (err instanceof ErrorValidacion) {
        console.log(`[server - ${horaActual()}] - Validación: ${err.message} - Info: ${req.params.id}`, err.cause?.message ?? '', err.cause?.parametro ?? '')
        return res.status(400).json({
            error: err.message
        })
    }
    next(err)
}