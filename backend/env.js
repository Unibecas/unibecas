//@ts-nocheck
import { validarBody } from "./esquemas/esquemas.js"
import { horaActual } from "./utils/funciones/funciones.js"

function env() {
  try {
    const vars = validarBody({...process.env}, 'checkEnv')
    return vars.data
  } catch (err) {
      console.log(`[Error - Variables de entorno insatisfechas - ${horaActual()}] Info:\n`)
      for (let i = 0; i < err.issues.length; i++) {
        console.log(`[Variable: ${err.issues[i].path}] - ${err.issues[i].message}`)
      }
      process.exit(1)
  }
}

console.log(`[Arranque - ${horaActual()}] Verificando variables de entorno...`)
export const { JWT_KEY, PORT, DB_PORT, DB_USER, DB_PASSWORD, DB_HOST, DB_NAME } = await env()
if (!process.env.DB_PORT) {
  console.log(`[Arranque - ${horaActual()}] Advertencia: DB_PORT no ha sido declarada como variable de entorno.\nDB_PORT -> (${DB_PORT}) por defecto.`)
}
if (!process.env.PORT) {
  console.log(`[Arranque - ${horaActual()}] Advertencia: PORT no ha sido declarada como variable de entorno.\nPORT -> (${PORT}) por defecto.`)
}

console.log(`[Arranque - ${horaActual()}] Estado: Exitoso - Info: Variables de entorno satisfechas!\n[Arranque - ${horaActual()}] Iniciando...`)