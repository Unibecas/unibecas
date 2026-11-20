//@ts-nocheck

import jwt from 'jsonwebtoken'
import { JWT_KEY } from "../errores/env.js"

export function horaActual() {
    return new Date().toLocaleString()
}

export function chequeoComodines(primero, segundo = undefined) {
    if ((primero && (primero.includes('%') || primero.includes('_'))) || (segundo && (segundo.includes('%') || segundo.includes('_')))) {
        return true
    }
    return false
}

export function esPuertoValido(valor) {
  if (!valor || valor.trim() === "") return false

  const numero = Number(valor.trim())
  return Number.isInteger(numero) && numero >= 1 && numero <= 65535
}