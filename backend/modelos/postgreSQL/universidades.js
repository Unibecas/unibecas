//@ts-nocheck
import { pool } from './conexion.js'
// Aqui van validaciones nuevas de eschemas ZOD
import { ErrorValidacion } from '../../utils/errores/errorcharcount.js'

const columnas = `id_universidad AS id, nom_institucion AS nombre, siglas AS siglas, codigo_snies AS snies, mod_presencial AS presencial, mod_virtual as virtual, mod_hibrida AS hibrida, mod_adistancia AS distancia, ciudad AS ciudad, departamento AS departamento`

const MAPA_COLUMNAS_UNIVERSIDADES = {
    nombreuni: 'nom_institucion',
    siglas: 'siglas',
    snies: 'codigo_snies',
    presencial: 'mod_presencial',
    virtual: 'mod_virtual',
    hibrida: 'mod_hibrida',
    distancia: 'mod_adistancia',
    ciudad: 'ciudad',
    departamento: 'departamento'
}

export class UniversidadesInfo {
    static async allRecovery({ uvrst, id, limit, offset }) {
        const busquedaFormateada = uvrst ? `%${uvrst}%` : false

        const params = []
        let querystmt = `
        SELECT 
        id_universidad AS id, 
        ${columnas}
        FROM universidades
        WHERE 1=1 `

        querystmt += busquedaFormateada ? ` AND f_unaccent(lower(nom_institucion)) ILIKE f_unaccent(lower($${params.push(busquedaFormateada)}))` : ''
        querystmt += id ? ` AND id_universidad = $${params.push(id)}` : ''

        querystmt += ` LIMIT $${params.push(limit)}`
        querystmt += ` OFFSET $${params.push(offset)}`

        const datos = await pool.query(querystmt, params)

        if (datos.rowCount === 0) {
            return {
                datos: datos.rows,
                meta: {
                    limit: limit,
                    offset: offset,
                    hasMore: datos.rows.length === limit
                }
            }
        }

        return {
            datos: datos.rows,
            meta: {
                limit: limit,
                offset: offset,
                hasMore: datos.rows.length === limit
            }
        }
    }

    static async newDataUni({ dataVal }) {
        const d = dataVal
        const newUni = await pool.query(`
                WITH universidad_insertada AS (
                    INSERT INTO universidades (nom_institucion, siglas, codigo_snies, mod_presencial, mod_virtual, mod_hibrida, mod_adistancia, ciudad, departamento) VALUES(
                        $1,
                        $2,
                        $3,
                        $4,
                        $5,
                        $6,
                        $7,
                        $8,
                        $9
                    ) 
                    RETURNING *
                )

                SELECT 
                    ${columnas} 
                    FROM universidad_insertada
                `, [
            d.nombreuni,
            d.siglas,
            d.snies,
            d.presencial,
            d.virtual,
            d.hibrida,
            d.distancia,
            d.ciudad,
            d.departamento
        ])

        return newUni.rows[0]
    }

    static async deleteUni({ id }) {
        const datos = await pool.query(`
            DELETE FROM universidades WHERE id_universidad = $1
            `, [id])

        if (datos.rowCount === 0) {
            return false
        }

        return true
    }

    static async patchDataUni({ id, input }) {
        const claves = Object.keys(input).filter(clave => Object.hasOwn(MAPA_COLUMNAS_UNIVERSIDADES, clave))

        if (claves.length === 0) {
            throw new ErrorValidacion('No hay campos para actualizar', {
                cause: {
                    message: 'No hay campos para actualizar la universidad'
                }
            }
            )
        }

        const asignaciones = claves.map((clave, i) => `${MAPA_COLUMNAS_UNIVERSIDADES[clave]} = $${i + 1}`)

        const valores = claves.map(clave => input[clave])

        valores.push(id)
        const posicionID = valores.length

        const resultado = await pool.query(`
            WITH universidad_actualizada AS (
                UPDATE universidades 
                SET ${asignaciones.join(', ')} 
                WHERE id_universidad = $${posicionID} 
                RETURNING * 
                ) 
            SELECT 
            ${columnas} 
            FROM universidad_actualizada
            `, valores
        )

        if (resultado.rowCount === 0) return false
        return resultado.rows[0]
    }
}