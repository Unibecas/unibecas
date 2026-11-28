//@ts-nocheck
import { actualizarBody, validarBody, validacionPaginacion } from "../esquemas/esquemas.js"
import { horaActual } from "../utils/funciones/funciones.js"
import { UserInfo } from "../modelos/postgreSQL/user.js"
import { GenToken } from "../utils/funciones/genToken.js"

// USUARIO

export class UserCont {
  static async user(req, res) {
    const validaciones = validarBody({id: req.info.id}, 'userId')
    const { id } = validaciones.data
    const usuario = await UserInfo.user({ id: id, limit: null, offset: null, admin: false })
    return res.status(200).json(usuario)
  }

  static async userUpdate(req, res) {
    const validaciones = actualizarBody(req.body, 'userUpdate')
    if (Object.keys(validaciones.data).length === 0) {
      return res.status(400).json({
        error: 'No puedes actualizar tu usuario ya que hay campos vacíos'
      })
    }
    const id = req.params.id ? validarBody({ id: req.params.id }, 'userId') : req.info.id

    const { email, estado, descripcion } = validaciones.data
    const flag = await UserInfo.userUpdate({ email, estado, descripcion: descripcion === '' ? null : descripcion, id: id.data?.id ?? req.info.id })

    if (!flag) {
      return res.status(400).json({
        error: 'No se puede actualizar los datos de el usuario en este momento.'
      })
    }

    return res.status(200).json({
      message: `Usuario ID: ${req.params.id} actualizado con éxito (refresh)`
    })
  }

  static async userChangePsswd(req, res) {
    const validaciones = validarBody(req.body, 'cambiarPsswd')
    const { actual, nueva, cerrarSesiones } = validaciones.data

    if (actual === nueva) {
      return res.status(400).json({
        error: 'Tu nueva contraseña no puede ser igual a la actual'
      })
    }

    const info = await UserInfo.userChangePsswd({ id: req.info.id, actual: actual, nueva: nueva, cerrarSesiones: cerrarSesiones })
    if (!info) {
      return res.status(400).json({
        error: 'La contraseña actual no es correcta'
      })
    }

    const newToken = cerrarSesiones ? GenToken({ id: req.info.id, v: info }) : undefined

    return cerrarSesiones === true ? 
    res.status(200)
    .cookie('access_token', newToken, {
      httpOnly: true
    })
    .json({
      message: 'La contraseña ha sido actualizada con éxito - Las sesiones han sido cerradas en todos los dispositivos'
    }) 
    : 
    res.status(200)
    .json({
      message: 'La contraseña ha sido actualizada con éxito'
    })

  }

  // Hacer reset password para gente con alzheimer
  // static async userResetPassword(req, res) {

  // }
}

// ADMIN

export class UserAdminCont {
  static async user(req, res) {
    const validaciones = actualizarBody({id: req.params.id}, 'userId')
    const { id } = validaciones.data
    const paginacion = validacionPaginacion(req.query)
    const { limit, offset } = paginacion.data
    const usuario = await UserInfo.user({ id: id ?? false, limit: limit, offset: offset, admin: true })
    return res.status(200).json(usuario)
  }

  static async userSuper(req, res) {
    if (req.body.id === req.info.id) {
      return res.status(400).json({
        error: 'No puedes editar tu propio rol'
      })
    }

    const { id, rol } = req.body
    const idVal = validarBody({ id: id }, 'userId')
    const rolVal = validarBody({ rol: rol }, 'userIsAdmin')

    const data = await UserInfo.userSuper({ rol: rolVal.data.rol, id: idVal.data.id })

    if (!data) {
      return res.status(404).json({
        error: `Usuario con la ID: ${req.body.id} no pudo ser actualizado`
      })
    }
    await UserInfo.newVersionToken({ id: req.body.id })

    return res.status(200).json({
      message: `Usuario ID: ${req.body.id} ${rol ? `ha sido promovido a Administrador` : `ha sido degradado a Usuario`}`
    })
  }

  static async userDelete(req, res) {
    if (req.params.id === req.info.id) {
      return res.status(400).json({
        error: 'No puedes eliminar tu propio usuario'
      })
    }
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
}