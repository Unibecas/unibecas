// @ts-nocheck
import { infoPublicaCheck } from "../utils/funciones/funciones.js"

export const sesionOpcional = async (req, res, next) => {
    req.tieneSesion = await infoPublicaCheck(req.cookies?.access_token)
    next()
  }
  