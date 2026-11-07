//@ts-nocheck
import { BecasInfo, ProgramasInfo } from "../modelos/postgreSQL/main.js"
import { actualizarBody, validacionPaginacion, validarBody } from "../esquemas/esquemas.js"
import { chequeoComodines } from "../utils/funciones/funciones.js"

export class BecasControl {
    static async allRecoveryCont(req, res) {
        const validaciones = validacionPaginacion(req.query)

        if (chequeoComodines(validaciones.data.schsp, validaciones.data.fmod)) {
            return res.status(400).json({
                error: `Error de validación de campos: No puedes usar comodines en busquedas - (Busqueda: ${validaciones.data.schsp ? `schsp: '${validaciones.data.schsp}'` : ''} ${validaciones.data.fmod ? ` - fmod: '${validaciones.data.fmod}'` : ''})`
            })
        }
        const { schsp, fmod, limit, offset } = validaciones.data

        const data = await BecasInfo.allRecovery({ schsp, fmod, limit, offset })

        return res.status(200).json(data)
    }

    static async idRecoveryCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

        const findData = await BecasInfo.idRecovery({ id: idVal.data.id })
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

        const newScsh = await BecasInfo.newData({ dataVal: validaciones.data })

        return res.status(201).json({
            message: 'Beca insertada con exito',
            info: newScsh
        })
    }

    static async deleteDataCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

        const filData = await BecasInfo.deleteData({ id: idVal.data.id })

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
        const id = validacionPaginacion({ id: req.params.id })
        const validaciones = actualizarBody(req.body, 'beca')
        if (validaciones.data.proveedor || validaciones.data.iduniversidad) {
            return res.status(400).json({
                error: 'Intento de modificacion en el modelo patchData (proveedor - iduniversidad)',
                parametro: validaciones.data.proveedor ? `Id proveedor: ${validaciones.data.proveedor}` : `Id universidad: ${validaciones.data.iduniversidad}`
            })
        }

        const data = await BecasInfo.patchData({ id: id.data.id, input: validaciones.data })

        if (data === null) {
            return res.status(400).json({
                error: `No hay campos para actualizar`
            })
        } else if (!data) {
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

export class ProgramasControl {
    static async allRecoveryCont(req, res) {
        const validaciones = validacionPaginacion(req.query)

        if (chequeoComodines(validaciones.data.nprog, validaciones.data.nform)) {
            return res.status(400).json({
                error: `Error de validación de campos: No puedes usar comodines en busquedas - (Busqueda: ${validaciones.data.nprog ? `nprog: '${validaciones.data.nprog}'` : ''} ${validaciones.data.nform ? ` - nform: '${validaciones.data.nform}'` : ''})`
            })
        }

        const { nprog, nform, limit, offset } = validaciones.data
        const data = await ProgramasInfo.allRecovery({ nprog, nform, limit, offset })

        return res.status(200).json(data)
    }

    static async idRecoveryCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })

        const findData = await ProgramasInfo.idRecovery({ id: idVal.data.id })

        if (findData) {
            return res.status(200).json({
                messahe: `Programa con la ID: ${req.params.id} encontrado`,
                INFO: findData
            })
        }
        return res.status(404).json({
            error: `Beca ${req.params.id} no encontrada`
        })
    }

    static async newDataCont(req, res) {
        const validaciones = validarBody(req.body, 'programa')
        const newProg = await ProgramasInfo.newData({ dataVal: validaciones.data })

        return res.status(201).json({
            message: 'Programa insertado con exito',
            info: newProg
        })
    }

    static async deleteDataCont(req, res) {
        const idVal = validacionPaginacion({ id: req.params.id })
        const filData = await ProgramasInfo.deleteData({ id: idVal.data.id })

        if (!filData) {
            return res.status(404).json({
                error: `ID ${req.params.id} no existe en los datos`
            })
        }

        return res.status(200).json({
            messahe: `ID ${req.params.id} eliminada con exito`
        })
    }

    static async patchDataCont(req, res) {
        const id = validacionPaginacion({ id: req.params.id })
        const validaciones = actualizarBody(req.body, 'programa')

        if (validaciones.data.id_universidad) {
            return res.status(400).json({
                error: 'Intento de modificacion en el modelo patchData (id_universidad) - No se puede modificar el id de la universidad asociada a un programa',
                parametro: `Id universidad: ${validaciones.data.id_universidad}`
            })
        }


        const data = await ProgramasInfo.patchData({ id: id.data.id, input: validaciones.data })

        if (data === null) {
            return res.status(400).json({
                error: `No hay campos para actualizar`
            })
        } else if (!data) {
            return res.status(404).json({
                error: `No existe dato con la ID: ${req.params.id}`
            })
        }

        return res.status(200).json({
            message: `ID ${req.params.id} actualizado con éxito`,
            info: data
        })
    }
}