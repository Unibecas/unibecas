//@ts-nocheck
import pg from 'pg'
import { horaActual } from '../../utils/funciones/funciones.js'
import {
    DB_HOST,
    DB_PORT,
    DB_USER,
    DB_PASSWORD,
    DB_NAME
} from '../../utils/errores/env.js'

const { Pool } = pg
export const pool = new Pool({
    host:DB_HOST,
    port: Number(DB_PORT),
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_NAME,
    max: 12,
    idleTimeoutMillis: 12000,
    connectionTimeoutMillis: 16000
})

function estadisticas() {
    return `Conexiones activas ${pool.totalCount} - Conexiones inactivas ${pool.idleCount} - Esperando ${pool.waitingCount}`
}

pool.on('error', (e) => {
    console.log(`[database - ${horaActual()}] - Error code: ${e.code} - Detalles: ${e.detail ? e.detail : '- No detalles'} - Error: ${e.message}`)
    console.log(estadisticas())
})

pool.on('connect', (client) => {
    console.log(`[database - ${horaActual()}] - Conexión establecida con la base de datos`)
    console.log(estadisticas())
})

pool.on('remove', (client) => {
    console.log(`[database - ${horaActual()}] - Conexión eliminada con la base de datos`)
    console.log(estadisticas())
})