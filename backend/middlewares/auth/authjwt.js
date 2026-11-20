// @ts-nocheck
import { JWT_KEY } from '../../utils/errores/env.js'
import jwt from 'jsonwebtoken'
import { horaActual } from '../../utils/funciones/funciones.js'

export function infoPublicaCheck(token) {
    try {
        jwt.verify(token, JWT_KEY, {
            algorithms: ['HS256']
        })
        return true
    } catch (error) {
        console.log(`[Public - ${horaActual()}] Información publica servida parcialmente - ${error.message}`)
        return false
    }
}

export class autenticacion {
  static async verificarJWT (req, res, next) {
    const t = req.cookies.access_token
    
    if (!t){
      return res.status(401).json({
        error: 'No tienes autorización para hacer esto'
      })
    }

    const payload = jwt.verify(t, JWT_KEY, {
      algorithms: ['HS256']
    })
    req.user = payload
    next()
  }

  static soloAdmin (req, res, next) {
    if (!req.user.admin) {
      return res.status(403).json({
        error: 'No tienes permisos'
      })
    }
    next()
  }
}