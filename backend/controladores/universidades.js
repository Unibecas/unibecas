//@ts-nocheck
import { UniversidadesInfo } from "../modelos/postgreSQL/universidades.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { actualizarBody, validacionPaginacion, validarBody } from "../esquemas/esquemas.js"

export class UniversidadesControl {
    static async allRecoveryCont(req, res) {
        try {
            const validaciones = validacionPaginacion(req.query)

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            } else if (validaciones.data.uvrst && validaciones.data.uvrst.includes('%')) {
                return res.status(400).json({
                    invalid_type_error: `Error de validación de campos: No puedes usar comodines en busquedas! (Busqueda: '${validaciones.data.uvrst}')`
                })
            }

            const { uvrst, id, limit, offset } = validaciones.data

            const data = await UniversidadesInfo.allRecovery({ uvrst, id, limit, offset })

            return res.status(200).json(data)

        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async newDataUniCont(req, res) {
        try {
            const validaciones = validarBody(req.body, 'universidad')

            if (!validaciones.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            }

            const newUni = await UniversidadesInfo.newDataUni({ dataVal: validaciones.data })

            return res.status(201).json({
                message: 'Beca insertada con exito',
                info: newUni
            })
        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async deleteUniCont(req, res) {
        try {
            const idVal = validacionPaginacion({ id: req.params.id })

            if (!idVal.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(idVal.error.message)[0].message} - ${JSON.parse(idVal.error.message)[0].path[0]}`
                })
            }

            const filData = await UniversidadesInfo.deleteUni({ id: idVal.data.id })

            if (filData) {
                console.log(`[server - ${horaActual()}] - ID ${req.params.id} elimiinada con éxito`)
                return res.status(200).json({
                    message: `ID: ${req.params.id} eliminada con éxito`
                })
            }

            return res.status(404).json({
                error: `ID ${req.params.id} no existe`
            })

        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

    static async patchDataUniCont(req, res) {
        try {
            const validaciones = actualizarBody(req.body, 'universidad')
            const id = validacionPaginacion({ id: req.params.id })
            if (!validaciones.success || !id.success) {
                return res.status(400).json({
                    invalid_type_error: `Error validación de campos: ${JSON.parse(validaciones.error.message)[0].message} - ${JSON.parse(validaciones.error.message)[0].path[0]}`
                })
            }

            const data = await UniversidadesInfo.patchDataUni({ id: id.data.id, input: validaciones.data })

            if (!data) {
                return res.status(400).json({
                    error: `No existe dato con la ID: ${req.params.id}`
                })
            }

            return res.status(200).json({
                message: `Dato ${req.params.id} actualizado con éxito`,
                info: data
            })
        } catch (error) {
            console.log(`[server - ${horaActual()}] - Error de servidor:`, error)
            return res.status(500).json({
                error: 'Error interno de servidor'
            })
        }
    }

}