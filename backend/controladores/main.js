//@ts-nocheck
import { MainInfo } from "../modelos/postgreSQL/main.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { ErrorValidacion } from "../utils/errores/errorcharcount.js"
import { actualizarBody, validacionPaginacion, validarBody } from "../esquemas/esquemas.js"

export class MainControl {

    static async allRecoveryCont(req, res) {
        const validaciones = validacionPaginacion(req.query)

        if (validaciones.data.schsp && (validaciones.data.schsp.includes('%') || validaciones.data.schsp.includes('_'))) {
            return res.status(400).json({
                invalid_type_error: `Error de validación de campos: No puedes usar comodines en busquedas! (Busqueda: '${validaciones.data.schsp}')`
            })
        }
        const { schsp, fmod, limit, offset } = validaciones.data

        const data = await MainInfo.allRecovery({ schsp, fmod, limit, offset })

        return res.status(200).json(data)
    }

    static async idRecoveryCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

        const findData = await MainInfo.idRecovery({ id: idVal.data.id })
        if (findData) {
            return res.status(200).json({
                message: `Beca con la ID: ${req.params.id} encontrado`,
                INFO: findData
            })
        }
        return res.status(404).json({
            error: `Beca ${req.params.id} no encontrada`
        })
    }

    static async newDataCont(req, res) {
        const validaciones = validarBody(req.body, 'beca')

        const newScsh = await MainInfo.newData({ dataVal: validaciones.data })

        return res.status(201).json({
            message: 'Beca insertada con exito',
            info: newScsh
        })
    }

    static async deleteDataCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

        const filData = await MainInfo.deleteData({ id: idVal.data.id })

        if (!filData) {
            return res.status(404).json({
                error: `ID: ${req.params.id} no existe en los datos`
            })
        }

        return res.status(200).json({
            message: `ID: ${req.params.id} eliminada con éxito`
        })
    }

    static async patchDataCont(req, res) {
        const validaciones = actualizarBody(req.body, 'beca')

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
    }
}