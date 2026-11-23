//@ts-nocheck
import { actualizarBody, validacionPaginacion, validarBody } from "../esquemas/esquemas.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { UserInfo } from "../modelos/postgreSQL/user.js"

export class UserCont {

  // query: ?bulk=true // false -> 'true'/'false' 
  // para tener todos los usuarios o no (si es indiferente) si eres admin y envías el query
  static async user(req, res) {
    const validaciones = validarBody({id: req.user.id}, 'userId')
    const queryVal = validacionPaginacion(req.query)
    const isAdmin = req.user.admin

    const { id } = validaciones.data
    const { limit, offset, bulk } = queryVal.data
    const usuario = await UserInfo.user({ id: id, admin: isAdmin, bulk: bulk, limit: limit, offset: offset })
    return res.status(200).json(usuario)
  }

  static async userUpdate(req, res) {
    const validaciones = actualizarBody(req.body, 'userUpdate')
    const id = validarBody({ id: req.user.id }, 'userId')

    const { email, estado, descripcion } = validaciones.data
    const flag = await UserInfo.userUpdate({ email, estado, descripcion, id: id.data.id })

    if (!flag) {
      return res.status(400).json({
        error: 'No se puede actualizar los datos de el usuario en este momento.'
      })
    }

    return res.status(200).json({
      message: `Usuario ID: ${req.user.id} actualizado con éxito (refresh)`
    })
  }

  static async userSuper(req, res) {
    const { id, rol } = req.body
    const idVal = validarBody({ id: id }, 'userId')
    const rolVal = validarBody({ rol: rol }, 'userIsAdmin')

    const data = await UserInfo.userSuper({ rol: rolVal.data.rol, id: idVal.data.id })

    if (!data) {
      return res.status(404).json({
        error: `Usuario con la ID: ${req.body.id} no pudo ser actualizado`
      })
    }

    return res.status(200).json({
      message: `Usuario ID: ${req.body.id} ha sido promovido a ${rol ? `Administrador` : `Usuario`}`
    })
  }

  static async userDelete(req, res) {
    const idVal = validarBody({ id: req.params.id }, 'userId')

    const data = await UserInfo.userDelete({ id: idVal.data.id })

    if (!data) {
      console.log(`[server - ${horaActual()}] - Error: ID ${req.params.id} no se pudo eliminar`)
      return res.status(404).json({
        error: `ID: ${req.params.id} no se pudo eliminar, no existe`
      })
    }

    console.log(`[server - ${horaActual()}] - Usuario ID ${req.params.id} eliminado con éxito`)
    return res.status(200).json({
      message: `Usuario ID ${req.params.id} eliminado con éxito`
    })
  }

  // static async userResetPsswd(req, res) {
  //   const idVal = actualizarBody({ id: req.user.id }, 'userId')
  //   const psswd = actualizarBody({ id: req.body.psswd }, '')

  //   const data = await UserInfo.userResetPsswd({ id: idVal.data.id })

  //   if (!data) {
  //     return res.status(400).json({
  //       error: 'No se pudo '
  //     })
  //   }
  // }
}