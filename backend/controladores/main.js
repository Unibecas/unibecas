//@ts-nocheck
import { MainInfo } from "../modelos/postgreSQL/main.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { ErrorValidacion } from "../utils/errores/errorcharcount.js"
import { actualizarBeca, validacionPaginacion, validarBeca } from "../esquemas/esquemas.js"

export class MainControl {

    static async allRecoveryCont(req, res) {
        try {
            const validaciones = validacionPaginacion(req.query)

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            }
            const { schsp, fmod, limit, offset } = validaciones.data

            const datos = await MainInfo.allRecovery({ schsp, fmod, limit, offset })
            if (datos === false) {
                return res.status(404).json({
                    error: `Beca ${schsp} ${fmod ? `con modalidad ${fmod}` : ''} no encontrada`
                })
            } else if (datos.length === 0) {
                return res.status(404).json({
                    info: `No hay becas disponibles`
                })
            }
            return res.status(200).json(datos)

        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async idRecoveryCont(req, res) {
        try {
            const findData = await MainInfo.idRecovery({ id: req.params.id })
            if (findData) {
                console.log(`[server - ${horaActual()}] - Beca devuelta - ${req.params.id}`)
                return res.status(200).json({
                    message: `Beca con la ID: ${req.params.id} encontrado`,
                    INFO: findData
                })
            }

            return res.status(404).json({
                error: `Beca ${req.params.id} no encontrada`
            })
        } catch (error) {
            if (error instanceof ErrorValidacion) {
                console.log(`[server - ${horaActual()}] - Validacion de busqueda:`, error.message, `- Info: ${req.params.id}`)
                return res.status(400).json({
                    error: error.message
                })
            }

            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async newDataCont(req, res) {
        try {
            const validaciones = validarBeca(req.body)

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            }

            const newScsh = await MainInfo.newData({ dataVal: validaciones.data })

            console.log(`[server - ${horaActual()}] Beca insertada con exito - ${newScsh.nombre} - ID: ${newScsh.id}`)
            return res.status(201).json({
                message: 'Beca insertada con exito',
                INFO: newScsh
            })
        } catch (error) {
            if (error.code === '23503') {
                console.log(`[server - ${horaActual()}] - Error de servidor:`, error.code, '-', error.detail)
                return res.status(400).json({
                    error: 'La referencia universitaria o de proveedor no existe'
                })
            }

            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async deleteDataCont(req, res) {
        try {
            const filData = await MainInfo.deleteData({ id: req.params.id })

            if (filData) {
                console.log(`[server - ${horaActual()}] Dato ${req.params.id} borrado con éxito`)
                return res.status(200).json({
                    message: `ID: ${req.params.id} eliminada con éxito`
                })
            }

            return res.status(404).json({
                error: `ID: ${req.params.id} no existe en los datos`
            })

        } catch (error) {
            if (error instanceof ErrorValidacion) {
                console.log(`[server - ${horaActual()}] - Validación:`, error.message, `- Info: ${req.params.id}`)
                return res.status(400).json({
                    error: error.message
                })
            }

            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async patchDataCont(req, res) {
        try {
            const validaciones = actualizarBeca(req.body)

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            }

            const data = await MainInfo.patchData({ id: req.params.id, input: validaciones.data })

            if (!data) {
                return res.status(404).json({
                    error: `No existe dato con la ID: ${req.params.id}`
                })
            }

            console.log(`[server - ${horaActual()}] ID ${req.params.id} actualizado con exito`)
            return res.status(200).json({
                message: `Dato ${req.params.id} actualizado con éxito`,
                INFO: data
            })
        } catch (error) {
            if (error instanceof ErrorValidacion) {
                console.log(`[server - ${horaActual()}] - Validación: ${error.message} - Info: ${req.params.id}`, error.cause?.message ?? '', error.cause?.parametro ?? '')
                return res.status(400).json({
                    error: error.message
                })
            }

            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }
}