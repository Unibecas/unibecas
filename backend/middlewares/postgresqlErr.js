//@ts-nocheck
import { DatabaseError } from "pg"
import { horaActual } from "../utils/funciones/funciones.js"

function consoleError(error) {
    return `[database - ${horaActual()}] Error DB - codigo: ${error.code ? error.code : 'No definido'} - Detalles: ${error.detail ?? `No hay detalles anexados`} - Info: ${error.message}`
}

export const postgresqlErr = (err, req, res, next) => {
    if (err instanceof DatabaseError) {
        switch (err.code) {
            // 0000
            case '3D000':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno de servicio, intentalo de nuevo mas tarde`,
                    code: '0000'
                })
            case '23503':
                console.log(consoleError(err))
                if (req.method === 'DELETE') {
                    return res.status(409).json({
                        error: `El recurso tiene datos relacionados`
                    })
                }
                return res.status(409).json({
                    error: `El recurso relacionado especificado no existe o no es válido`
                })

            case '23505':
                console.log(consoleError(err))
                return res.status(409).json({
                    error: `Ya existe un registro con los mismos datos únicos`
                })
            case '23502':
                console.log(consoleError(err))
                return res.status(400).json({
                    error: `Falta uno o más campos obligatorios en la solicitud`
                })
            case '23514':
                console.log(consoleError(err))
                return res.status(400).json({
                    error: `La información proporcionada no cumple con las reglas de validación`
                })
            case '22001':
                console.log(consoleError(err))
                return res.status(400).json({
                    error: `Uno de los campos excede la longitud permitida`
                })
            case '22P02':
                console.log(consoleError(err))
                return res.status(400).json({
                    error: `El formato de uno de los valores proporcionados es invalido`
                })
            case '22003':
                console.log(consoleError(err))
                return res.status(400).json({
                    error: `El valor numerico proporcionado está fuera de rango`
                })
            // 1000
            case '42P01':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno de servidor: Recurso no encontrado en el sistema`,
                    code: '1000'
                })
            // 1001
            case '42703':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno del servidor: Recurso no alcanzable`,
                    code: '1001'
                })
            // 1002
            case '42601':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno del servidor: Recurso no alcanzable`,
                    code: '1002'
                })
            // 1003
            case '42883':
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno del servidor: Recurso no alcanzable`,
                    code: '1003'
                })
            // EIS100
            default:
                console.log(consoleError(err))
                return res.status(500).json({
                    error: `Error interno de servidor`,
                    code: 'EIS100'
                })
        }
    } else if (err.code && (err.code === 'ECONNREFUSED' || err.code === 'ETIMEDOUT')) {
        console.log(consoleError(err))
        return res.status(503).json({
            error: 'Error de conexion, intentalo de nuevo mas tarde'
        })
    }
    next(err)
}