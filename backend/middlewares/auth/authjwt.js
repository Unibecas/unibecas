// @ts-nocheck
import jwt from 'jsonwebtoken'

export class autenticacion {
  static async verificarJWT (req, res, next) {
    const t = req.cookies.access_token

    if (!t){
      return res.status(401).json({
        error: 'No tienes autorización para hacer esto'
      })
    }

    const payload = await jwt.verify(t, process.env.JWT_KEY)
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