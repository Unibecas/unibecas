// @ts-nocheck
import { JWT_KEY } from '../../env.js'
import jwt from 'jsonwebtoken'
import { horaActual } from '../../utils/funciones/funciones.js'

export function infoPublicaCheck(token, ip) {
    try {
        jwt.verify(token, JWT_KEY, {
            algorithms: ['HS256']
        })
        return true
    } catch (error) {
      const clgInfo = `[Error JWT - ${horaActual()}] - Información publica servida parcialmente - ${error.message}`
      if (error instanceof jwt.JsonWebTokenError) {
        if (error.message === 'jwt malformed') {
          console.log(clgInfo)
        } else if (error.message === 'invalid signature') {
          console.log(clgInfo + ` - IP: ${ip}`)
        } else {
          console.log(clgInfo + ` - Info: ${error.message}`)
        }
      } else if (error instanceof jwt.TokenExpiredError) {
        console.log(clgInfo.replaceAll('- ${error.message}', '') + `- Token expirado`)
      }
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