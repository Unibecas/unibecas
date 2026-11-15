//@ts-nocheck
import { horaActual } from "../funciones/funciones.js"
const requiredEnvVars = [
  'PORT',
  'DB_PORT',
  'DB_USER',
  'DB_PASSWORD',
  'DB_HOST',
  'DB_NAME',
  'JWT_KEY'
]

const missingVars = requiredEnvVars.filter((key) => !process.env[key]?.trim())

if (missingVars.length > 0) {
  console.error(`[error - ${horaActual()}] Faltan variables de entorno obligatorias: ${missingVars.join(', ')}`)
  process.exit(1)
} else if (process.env.JWT_KEY.length <= 32) {
  console.error(`[error - ${horaActual()}] .env -> JWT_KEY muy corta! - Minimo 32 caracteres`)
  process.exit(1)
} else if (Number.isNaN(Number(process.env.PORT)) || Number.isNaN(Number(process.env.DB_PORT))) {
  console.error(`[error - ${horaActual()}] .env -> PORT - DB_PORT No son numeros - Minimo 32 caracteres`)
  process.exit(1)
}



console.log(`[Arranque - ${horaActual()}] Estado: Exitoso - Info: Variables de entorno satisfechas!`)

export const { PORT, DB_PORT, DB_USER, DB_PASSWORD, DB_HOST, DB_NAME, JWT_KEY } = process.env