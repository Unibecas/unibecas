//@ts-nocheck
import { pool } from './conexion.js'
import { ErrorValidacion } from '../../utils/errores/errorcharcount.js'
import { validarIdEntero } from '../../utils/funciones/funciones.js'

const MAPA_COLUMNAS_BECAS = {
    nombrebeca: 'nombre_beca',
    vigencia: 'vigencia_programa',
    descripcion: 'descripcion_informacion',
    aplicar: 'informacion_aplicar',
    modalidad: 'modalidad',
    cobertura: 'cobertura',
    estado: 'estado',
    urlinfo: 'url_informacion'
}

const columnas = `b.id_beca AS id, b.nombre_beca AS nombre, b.vigencia_programa AS vigencia, b.descripcion_informacion AS descripcion, b.informacion_aplicar AS aplicar, b.modalidad AS modalidad, u.nom_institucion AS universidad, b.cobertura AS cobertura, b.estado as estado, e.nom_ent AS proveedor, b.url_informacion AS url`

export class MainInfo {
    static async allRecovery({ schsp, fmod, limit, offset }) {

        const busquedaFormateada = schsp ? `%${schsp}%` : false
        const filtroFormat = fmod ? `%${fmod}%` : false

        const params = []
        let querystmt = `
        SELECT 
        ${columnas} 
        FROM becas AS b 
        LEFT JOIN universidades AS u 
            ON b.id_universidad_acceso = u.id_universidad 
        LEFT JOIN entidades AS e 
            ON b.proveedor_beca = e.id_entidad WHERE 1=1
        `

        querystmt += busquedaFormateada
            ? ` AND f_unaccent(lower(b.nombre_beca)) ILIKE f_unaccent(lower($${params.push(busquedaFormateada)}))`
            : ''

        querystmt += filtroFormat
            ? ` AND f_unaccent(lower(b.modalidad)) ILIKE f_unaccent(lower($${params.push(filtroFormat)}))`
            : ''

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

    static async idRecovery({ id }) {
        const idValido = validarIdEntero(id)
        if (!idValido) return false

        const datos = await pool.query(`
                        SELECT
                        ${columnas} 
                        FROM becas AS b 
                        LEFT JOIN universidades AS u
                            ON b.id_universidad_acceso = u.id_universidad
                        LEFT JOIN entidades AS e
                            ON b.proveedor_beca = e.id_entidad
                        WHERE b.id_beca = $1
                    `, [idValido])

        if (datos.rowCount === 0) {
            return false
        }
        return datos.rows[0]
    }

    static async newData({ dataVal }) {

        const d = dataVal

        const newScsh = await pool.query(`
                WITH beca_insertada AS (
                    INSERT INTO becas (nombre_beca, vigencia_programa, descripcion_informacion, informacion_aplicar, modalidad, cobertura, id_universidad_acceso, estado, url_informacion, proveedor_beca) VALUES(
                        $1,
                        $2,
                        $3,
                        $4,
                        $5,
                        $6,
                        $7,
                        $8,
                        $9,
                        $10
                    ) 
                    RETURNING *
                )

                SELECT 
                    ${columnas} 
                    FROM beca_insertada AS b 
                    LEFT JOIN universidades AS u 
                        ON b.id_universidad_acceso = u.id_universidad 
                    LEFT JOIN entidades AS e 
                        ON b.proveedor_beca = e.id_entidad
                `, [
            d.nombrebeca,
            d.vigencia,
            d.descripcion,
            d.aplicar,
            d.modalidad,
            d.cobertura,
            Number(d.iduniversidad),
            d.estado,
            d.urlinfo,
            Number(d.proveedor)
        ])

        return newScsh.rows[0]

    }

    static async deleteData({ id }) {
        const idValido = validarIdEntero(id)
        if (!idValido) return false

        const datos = await pool.query(`
                DELETE FROM becas WHERE id_beca = $1 
                RETURNING * 
                `, [idValido])

        if (datos.rowCount === 0) {
            return false
        }

        return true
    }

    static async patchData({ id, input }) {
        const idValido = validarIdEntero(id)
        if (!idValido) return false

        if (input.proveedor || input.iduniversidad) {
            throw new ErrorValidacion(
                'No puedes modificar proveedores o universidades', {
                cause: {
                    message: 'Intento de modificacion en el modelo patchData (proveedor - iduniversidad)',
                    parametro: input.proveedor ? `Id proveedor: ${input.proveedor}` : `Id universidad: ${input.iduniversidad}`
                }
            }
            )
        }

        const claves = Object.keys(input).filter(clave => Object.hasOwn(MAPA_COLUMNAS_BECAS, clave))

        if (claves.length === 0) {
            throw new ErrorValidacion('No hay campos para actualizar', {
                cause: {
                    message: 'No hay campos para actualizar'
                }
            }
            )
        }
        const asignaciones = claves.map((clave, i) => `${MAPA_COLUMNAS_BECAS[clave]} = $${i + 1}`)

        const valores = claves.map(clave => input[clave])

        valores.push(idValido)
        const posicionId = valores.length

        const resultado = await pool.query(`
            WITH beca_actualizada AS (
                UPDATE becas 
                SET ${asignaciones.join(', ')} 
                WHERE id_beca = $${posicionId} 
                RETURNING * 
                ) 
            SELECT 
            ${columnas} 
            FROM beca_actualizada AS b 
            LEFT JOIN universidades AS u 
                ON b.id_universidad_acceso = u.id_universidad 
            LEFT JOIN entidades AS e 
                ON b.proveedor_beca = e.id_entidad
            `, valores
        )

        if (resultado.rowCount === 0) {
            return false
        }

        return resultado.rows[0]
    }
}