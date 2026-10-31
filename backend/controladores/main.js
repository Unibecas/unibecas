//@ts-nocheck
import { MainInfo } from "../modelos/postgreSQL/main.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { ErrorValidacion } from "../utils/errores/errorcharcount.js"
import { actualizarBody, validacionPaginacion, validarBody } from "../esquemas/esquemas.js"

export class MainControl {

    static async allRecoveryCont(req, res) {
        try {
            const validaciones = validacionPaginacion(req.query)

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            } else if (validaciones.data.schsp && (validaciones.data.schsp.includes('%') || validaciones.data.schsp.includes('_'))) {
                return res.status(400).json({
                    invalid_type_error: `Error de validación de campos: No puedes usar comodines en busquedas! (Busqueda: '${validaciones.data.schsp}')`
                })
            }
            const { schsp, fmod, limit, offset } = validaciones.data

            const data = await MainInfo.allRecovery({ schsp, fmod, limit, offset })

            return res.status(200).json(data)

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
                return res.status(200).json({
                    message: `Beca con la ID: ${req.params.id} encontrado`,
                    INFO: findData
                })
            }

            return res.status(404).json({
                error: `Beca ${req.params.id} no encontrada`
            })
        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async newDataCont(req, res) {
        try {
            const validaciones = validarBody(req.body, 'beca')

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            }

            const newScsh = await MainInfo.newData({ dataVal: validaciones.data })

            return res.status(201).json({
                message: 'Beca insertada con exito',
                info: newScsh
            })
        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async deleteDataCont(req, res) {
        try {
            const idVal = validacionPaginacion({ id: req.params.id })

            if (!idVal.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(idVal.error.message)[0].message} - ${JSON.parse(idVal.error.message)[0].path[0]}`
                })
            }

            const filData = await MainInfo.deleteData({ id: idVal.data.id })

            if (filData) {
                return res.status(200).json({
                    message: `ID: ${req.params.id} eliminada con éxito`
                })
            }

            return res.status(404).json({
                error: `ID: ${req.params.id} no existe en los datos`
            })

        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async patchDataCont(req, res) {
        try {
            const validaciones = actualizarBody(req.body, 'beca')

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

            return res.status(200).json({
                message: `Dato ${req.params.id} actualizado con éxito`,
                info: data
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