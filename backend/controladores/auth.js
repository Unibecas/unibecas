//@ts-nocheck
import { AuthInfo } from '../modelos/postgreSQL/auth.js'
import { actualizarBody, validarBody } from '../esquemas/esquemas.js'

export class AuthControl {
  static async userRegisterCont(req, res) {
    const validaciones = validarBody(req.body, 'usuario')

    const newUser = await AuthInfo.userRegister({
      username: validaciones.data.username,
      email: validaciones.data.email,
      password: validaciones.data.password
    })

    return res.status(201).json({
      message: 'Usuario registrado con exito',
      info: newUser
    })
  }

  static async userLoginCont(req, res) {
    const validaciones = actualizarBody(req.body, 'usuario')

    const user = await AuthInfo.userLogin({
      username: validaciones.data.username,
      password: validaciones.data.password
    })

    if (!user) {
      return res.status(401).json({
        error: 'Usuario o contraseña incorrectos'
      })
    }

    return res.status(200).json({
      message: 'Usuario logueado con exito',
      info: {
        id: user.id,
        username: user.username,
        email: user.email
      }
    })
  }

  static async userLogoutCont(req, res) {
    const validaciones = validarBody(req.body, 'userId')
    const resultado = await AuthInfo.userLogout({
      id: validaciones.data.id
    })

    if (!resultado) {
      return res.status(400).json({
        error: 'No se pudo cerrar sesión. ID de usuario inválido.'
      })
    }

    return res.status(200).json(resultado)
  }
}