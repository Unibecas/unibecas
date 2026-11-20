//@ts-nocheck
import { actualizarBody } from "../../esquemas/esquemas.js"
import { horaActual } from "../funciones/funciones.js"

async function env() {
  try {
    const vars = await actualizarBody({...process.env}, 'checkEnv')
    return vars.data
  } catch (err) {  
      console.log(`[Error - Variables de entorno insatisfechas - ${horaActual()}] Columna: ${err.issues[0].path} - Info: ${err.issues[0].message}`)
      process.exit(1)
  }
}

console.log(`Verificando variables de entorno...`)
export const { JWT_KEY, PORT, DB_PORT, DB_USER, DB_PASSWORD, DB_HOST, DB_NAME } = await env()

console.log(`[Arranque - ${horaActual()}] Estado: Exitoso - Info: Variables de entorno satisfechas!\n`)