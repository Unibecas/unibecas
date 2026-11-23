// @ts-nocheck
import { infoPublicaCheck } from "./auth/authjwt.js" 

export const sesionOpcional = async (req, res, next) => {
    req.tieneSesion = infoPublicaCheck(req.cookies?.access_token, req.ip)
    next()
  }
  