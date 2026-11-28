// @ts-nocheck
import { JWT_KEY } from '../../env.js'
import jwt from 'jsonwebtoken'
import { horaActual } from '../../utils/funciones/funciones.js'
import { userVersion } from '../../modelos/postgreSQL/utils/token_version.js'

export async function infoPublicaCheck(token, ip) {
    try {
        const t = jwt.verify(token, JWT_KEY, {
            algorithms: ['HS256']
        })
        const ver = await userVersion.tokenVersion(t.id)
        if (!ver) {
          return false
        }
        if (ver.v !== t.v) {
          return false
        }
        return true

      } catch (error) {
        const clgInfo = `[Error JWT - ${horaActual()}] - Información publica servida parcialmente`
        if (error instanceof jwt.JsonWebTokenError) {
        if (error.message === 'jwt malformed') {
          console.log(clgInfo + ` - Info: ${error.message}`)
        } else if (error.message === 'invalid signature') {
          console.log(clgInfo + ` - Info: ${error.message}` + ` - IP: ${ip}`)
        } else if (error.message === 'jwt must be provided') {
          console.log(clgInfo + ` - Info: ${error.message}` + ` - IP: ${ip}`)
        } else {
          console.log(clgInfo + ` - NO OBSERVADO - Info: ${error.message}`)
        }
      } else if (error instanceof jwt.TokenExpiredError) {
        console.log(clgInfo + `- Token expirado`)
      }
      console.log(`Se devolvio false de error`)
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

    const payload = await jwt.verify(t, JWT_KEY, {
      algorithms: ['HS256']
    })

    if (!payload.id) {
      return res.status(401).json({
        error: 'Sesion invalida - 001'
      })
    } else if ((!Number.isInteger(payload.v) || Number.isNaN(payload.v))) {
      return res.status(401).json({
        error: 'Sesion invalida - 011'
      })
    } else if (payload.v === null || payload.v === undefined) {
      return res.status(401).json({
        error: 'Sesion invalida - 021'
      })
    }

    // req.user contiene:
    // ID -> String: Id de usuario del payload (No usar para validar)
    // V -> Int: Version del token (No usar fuera de el auth)
    
    req.user = payload
    const data = await userVersion.tokenVersion(req.user.id)
    
    if (!data) {
      return res.status(401).json({
        error: 'Sesion invalida - 002'
      })
    }

    if (data.v !== req.user.v) {
      return res.status(401).json({
        error: 'Sesion invalida - 003 - Vuelva a iniciar sesión'
       })
    }

    // req.user contiene:
    // ID -> String: Id de usuario 
    // USERNAME -> String: Nombre de usuario
    // ROL -> String: 'Admin' - 'Usuario'

    req.info = {
      id: data.id,
      username: data.username,
      rol: data.rol
    }

    next()
  }

  static soloAdmin (req, res, next) {
    if (req.info.rol !== 'Admin') {
      return res.status(403).json({
        error: 'No tienes permisos'
      })
    }

    next()
  }
}