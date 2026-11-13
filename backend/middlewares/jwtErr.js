//@ts-nocheck
import jwt from "jsonwebtoken"
// No se pueden importar directamente del paquete los errores, se tienen que citar, 
// ya que jsonwebtoken es una libreria de CommonJS

export const jwtErr = (err, req, res, next) => {
  console.log(`Error TOKEN: ${err.name} - Detalles: ${err.message}`)
  if (err instanceof jwt.TokenExpiredError || err instanceof jwt.JsonWebTokenError) {
    return res.status(498).json({
      error: 'Token invalido o expirado'
    })
  }
  
  next(err)
}