//@ts-nocheck
import { UniversidadesInfo } from "../modelos/postgreSQL/universidades.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { actualizarBody, validacionPaginacion, validarBody } from "../esquemas/esquemas.js"

export class UniversidadesControl {
    static async allRecoveryCont(req, res) {
        const validaciones = validacionPaginacion(req.query)
        if (validaciones.data.uvrst && validaciones.data.uvrst.includes('%')) {
            return res.status(400).json({
                invalid_type_error: `Error de validación de campos: No puedes usar comodines en busquedas! (Busqueda: '${validaciones.data.uvrst}')`
            })
        }

        const { uvrst, id, limit, offset } = validaciones.data

        const data = await UniversidadesInfo.allRecovery({ uvrst, id, limit, offset })

        return res.status(200).json(data)
    }

    static async newDataUniCont(req, res) {
        const validaciones = validarBody(req.body, 'universidad')

        const newUni = await UniversidadesInfo.newDataUni({ dataVal: validaciones.data })

        return res.status(201).json({
            message: 'Beca insertada con exito',
            info: newUni
        })
    }

    static async deleteUniCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

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
    }

    static async patchDataUniCont(req, res) {
        const validaciones = actualizarBody(req.body, 'universidad')
        const id = validacionPaginacion({ id: req.params.id })

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
    }
}