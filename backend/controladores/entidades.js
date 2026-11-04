//@ts-nocheck
import { EntidadesInfo } from "../modelos/postgreSQL/entidades.js"
import { validacionPaginacion, actualizarBody, validarBody } from "../esquemas/esquemas.js"
import { chequeoComodines } from "../utils/funciones/funciones.js"

export class EntidadesControl {
    static async recoveryAllCont(req, res) {
        const validaciones = validacionPaginacion(req.query)

        if (chequeoComodines(validaciones.data.entty, validaciones.data.frscial)) {
            return res.status(400).json({
                error: `Error de validación de campos: No puedes usar comodines en busquedas - (Busqueda: ${validaciones.data.entty ? `entty: '${validaciones.data.entty}'` : ''} ${validaciones.data.frscial ? ` - frscial: '${validaciones.data.frscial}'` : ''})`
            })
        }

        const { id, entty, frscial, limit, offset } = validaciones.data

        const data = await EntidadesInfo.allRecovery({ id, entty, frscial, limit, offset })

        return res.status(200).json(data)
    }

    static async newEntCont(req, res) {
        const validaciones = validarBody(req.body, 'entidad')

        const newEnt = await EntidadesInfo.newEnt({ dataVal: validaciones.data })

        return res.status(201).json({
            message: 'Entidad registrada con exito',
            info: newEnt
        })
    }

    static async deleteEntCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

        const deleteEnt = await EntidadesInfo.deleteEnt({ id: idVal.data.id })

        if (deleteEnt) {
            return res.status(200).json({
                message: `ID: ${req.params.id} eliminado con éxito`
            })
        }

        return res.status(404).json({
            error: `ID: ${req.params.id} no existe en los datos`
        })
    }

    static async patchEntCont(req, res) {
        const validaciones = actualizarBody(req.body, 'entidad')
        const id = validacionPaginacion({ id: req.params.id })

        const data = await EntidadesInfo.patchDataEnt({ id: id.data.id, input: validaciones.data })

        if (!data) {
            return res.status(404).json({
                error: `No existe dato con la ID: ${req.params.id}`
            })
        }

        return res.status(200).json({
            message: `Dato ${id.data.id} actualizado con éxito`,
            info: data
        })
    }
}