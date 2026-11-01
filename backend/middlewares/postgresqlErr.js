//@ts-nocheck
import { DatabaseError } from "pg"
import { horaActual } from "../utils/funciones/funciones.js"

function consoleError(error) {
    return `[database - ${horaActual()}] Error DB - codigo: ${error.code} - detalles: ${error.detail}`
}

export const postgresqlErr = (err, req, res, next) => {
    if (err instanceof DatabaseError) {
        switch (err.code) {
            case '3D000':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '23503':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '23505':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '23502':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '23514':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '22001':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '22P02':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '22003':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '42P01':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '42703':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '42601':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            case '42883':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error de conexión, intentalo de nuevo mas tarde`
                })
            default:
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno de servidor`
                })
        }
    } else if (err.code && err.code === 'ECONNREFUSED' || err.code === 'ETIMEDOUT') {
        console.log(consoleError(err))
        return res.status(503).json({
            error: 'Error de conexion, intentalo de nuevo mas tarde'
        })
    }
    next(err)
}