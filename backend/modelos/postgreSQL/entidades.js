//@ts-nocheck


// HACER CONTROLADORES DE ENTIDADES PARA PROBAR EL USO DE ESTAS.


import { ErrorValidacion } from "../../utils/errores/errorcharcount.js"
import { pool } from "./conexion.js"

const MAPA_COLUMNAS_ENTIDADES = {
    nombreent: 'nom_ent',
    tipo_entidad: 'tipo_ent',
    nit: 'nit_ent'
}

const columnas = 'id_entidad AS id, nom_ent AS nombre, tipo_ent AS tipo, nit_ent AS nit'

export class EntidadesInfo {
    static async allRecovery({ id, entty, frscial, limit, offset }) {
        const params = []

        let querystmt = `
        SELECT 
        ${columnas}
        FROM entidades 
        WHERE 1=1
        `

        querystmt += entty ? ` AND f_unaccent(lower(nom_ent)) ILIKE f_unaccent(lower($${params.push(`%${entty}%`)}))` : ''
        querystmt += frscial ? ` AND f_unaccent(lower(tipo_ent)) ILIKE f_unaccent(lower($${params.push(`%${frscial}%`)}))` : ''
        querystmt += id ? ` AND id_entidad = $${params.push(id)}` : ''

        querystmt += ` LIMIT $${params.push(limit)}`
        querystmt += ` OFFSET $${params.push(offset)}`

        const datos = await pool.query(querystmt, params)

        return {
            datos: datos.rows,
            meta: {
                limit: limit,
                offset: offset,
                hasMore: datos.rows.length === limit
            }
        }
    }

    static async newEnt({ dataVal }) {
        const d = dataVal

        const newEntidad = await pool.query(`
            WITH nueva_entidad AS (
                INSERT INTO entidades (nom_ent, tipo_ent, nit_ent) VALUES (
                    $1,
                    $2,
                    $3
                )
                RETURNING *
            )
            
            SELECT
            ${columnas}
            FROM nueva_entidad
            `, [
            d.nombreent,
            d.tipo_entidad,
            d.nit
        ])

        return newEntidad.rows[0]
    }

    static async deleteEnt({ id }) {
        const datos = await pool.query(`
            DELETE FROM entidades WHERE id_entidad = $1
            `, [id])

        if (datos.rowCount === 0) return false
        return true
    }

    static async patchDataEnt({ id, input }) {
        const claves = Object.keys(input).filter(clave => Object.hasOwn(MAPA_COLUMNAS_ENTIDADES, clave))

        if (claves.length === 0) {
            throw new ErrorValidacion('NO hay campos para actualizar', {
                cause: {
                    message: 'No hay campos para actualizar la entidad'
                }
            }
            )
        }

        const asignaciones = claves.map((clave, i) => `${MAPA_COLUMNAS_ENTIDADES[clave]} = $${i + 1}`)
        const valores = claves.map(clave => input[clave])

        valores.push(id)
        const posicionID = valores.length

        const resultado = await pool.query(`
            WITH entidad_actualizada AS (
                UPDATE entidades
                SET ${asignaciones.join(', ')}
                WHERE id_entidades = $${posicionID}
                RETURNING *
                )
            SELECT
            ${columnas}
            FROM entidad_actualizada
            `, valores
        )

        if (resultado.rowCount === 0) return false
        return resultado.rows[0]
    }
}