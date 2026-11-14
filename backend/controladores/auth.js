//@ts-nocheck
import { AuthInfo } from '../modelos/postgreSQL/auth.js'
import { validarBody } from '../esquemas/esquemas.js'
import jwt from 'jsonwebtoken'

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
    const validaciones = validarBody(req.body, 'login')

    const user = await AuthInfo.userLogin({
      username: validaciones.data.username,
      password: validaciones.data.password
    })

    if (!user) {
      return res.status(401).json({
        error: 'Usuario o contraseña incorrectos'
      })
    }

    const token = jwt.sign({
      id: user.id,
      user: user.username,
      admin: user.rol === 'Admin' ? true : false
    }, 
    process.env.JWT_KEY, 
    {
      expiresIn: '1h'
    })

    return res.status(200)
    .cookie('access_token', token, {
      httpOnly: true 
      // para no hacer que sea accesible la cookie en js con document.cookie desde el cliente
      // secure: true hacer que funcione solo en https
      // sameSite: lax o strict para hacer que funcione en un solo dominio
      // maxAge: expiracion de la cookie pero con la del kwt esta mas q bien
    })
    .json({
      message: 'Usuario logueado con exito',
      info: {
        id: user.id,
        user: user.username,
        rol: user.rol
      }
    })
  }

  static async userLogoutCont(req, res) {
    res.clearCookie('access_token', {
      httpOnly: true
    })
    res.status(200)
    // .redirect('http://localhost:5173') para hacer la redireccion, sustituye la respuesta de json,
    //  haciendo que el cliente redirija automaticamente a la pagina del home
    .json({
      info: 'Cierre de sesión exitoso'
    })
  }
}