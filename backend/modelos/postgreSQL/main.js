//@ts-nocheck
import { pool } from './conexion.js'

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

const MAPA_COLUMNAS_PROGRAMAS = {
    snies: 'codigo_snies_programa',
    nombreprograma: 'nombre_programa',
    titulo: 'titulo_otorgado',
    nivel: 'nivel_formacion',
    semestres: 'numero_semestres',
    creditos: 'creditos_totales',
    periodo_admision: 'periodicidad_admision',
    id_universidad: 'id_universidad_fk',
    acreditacion: 'tipo_acreditacion'
}

const columnas = `b.id_beca AS id, b.nombre_beca AS nombre, b.vigencia_programa AS vigencia, b.descripcion_informacion AS descripcion, b.informacion_aplicar AS aplicar, b.modalidad AS modalidad, u.nom_institucion AS universidad, b.cobertura AS cobertura, b.estado as estado, e.nom_ent AS proveedor, b.url_informacion AS url`

const columnasProgramas = `c.id_carrera AS id, c.codigo_snies_programa AS snies, c.nombre_programa AS nombre, c.titulo_otorgado AS titulo, c.nivel_formacion AS nivel, c.numero_semestres AS numero_semestres, c.creditos_totales AS creditos, c.periodicidad_admision AS periodo_admision, u.nom_institucion AS universidad, c.tipo_acreditacion AS acreditacion`

export class BecasInfo {
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

        querystmt += ` ORDER BY b.id_beca DESC`
        querystmt += ` LIMIT $${params.push(limit + 1)}`
        querystmt += ` OFFSET $${params.push(offset)}`

        const datos = await pool.query(querystmt, params)
        const hasMore = datos.rows.length > limit

        return {
            datos: hasMore ? datos.rows.slice(0, limit) : datos.rows,
            meta: {
                limit: limit,
                offset: offset,
                hasMore: hasMore
            }
        }
    }

    static async idRecovery({ id }) {
        const datos = await pool.query(`
                        SELECT
                        ${columnas} 
                        FROM becas AS b 
                        LEFT JOIN universidades AS u
                            ON b.id_universidad_acceso = u.id_universidad
                        LEFT JOIN entidades AS e
                            ON b.proveedor_beca = e.id_entidad
                        WHERE b.id_beca = $1
                    `, [id])

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
            d.iduniversidad,
            d.estado,
            d.urlinfo,
            d.proveedor
        ])

        return newScsh.rows[0]

    }

    static async deleteData({ id }) {
        const datos = await pool.query(`
                DELETE FROM becas WHERE id_beca = $1 
                `, [id])

        if (datos.rowCount === 0) {
            return false
        }

        return true
    }

    static async patchData({ id, input }) {
        const claves = Object.keys(input).filter(clave => Object.hasOwn(MAPA_COLUMNAS_BECAS, clave))

        if (claves.length === 0) {
            return null
        }

        const asignaciones = claves.map((clave, i) => `${MAPA_COLUMNAS_BECAS[clave]} = $${i + 1}`)

        const valores = claves.map(clave => input[clave])

        valores.push(id)
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

        if (resultado.rowCount === 0) return false
        return resultado.rows[0]
    }
}

export class ProgramasInfo {
    static async allRecovery({ nprog, nform, limit, offset }) {

        const busquedaFormateada = nprog ? `%${nprog}%` : false
        const filtroFormat = nform ? `%${nform}%` : false

        const params = []
        let querystmt = `
        SELECT 
        ${columnasProgramas} 
        FROM carreras AS c 
        LEFT JOIN universidades AS u 
            ON c.id_universidad_fk = u.id_universidad 
        WHERE 1=1
        `

        querystmt += busquedaFormateada
            ? ` AND f_unaccent(lower(c.nombre_programa)) ILIKE f_unaccent(lower($${params.push(busquedaFormateada)}))`
            : ''

        querystmt += filtroFormat
            ? ` AND f_unaccent(lower(c.nivel_formacion)) ILIKE f_unaccent(lower($${params.push(filtroFormat)}))`
            : ''

        querystmt += ` ORDER BY c.id_carrera DESC`
        querystmt += ` LIMIT $${params.push(limit + 1)}`
        querystmt += ` OFFSET $${params.push(offset)}`

        const datos = await pool.query(querystmt, params)
        const hasMore = datos.rows.length > limit

        return {
            datos: hasMore ? datos.rows.slice(0, limit) : datos.rows,
            meta: {
                limit: limit,
                offset: offset,
                hasMore: hasMore
            }
        }
    }

    static async idRecovery({ id }) {
        const datos = await pool.query(`
                        SELECT
                        ${columnasProgramas} 
                        FROM carreras AS c 
                        LEFT JOIN universidades AS u
                            ON c.id_universidad_fk = u.id_universidad
                        WHERE c.id_carrera = $1
                    `, [id])

        return datos.rows[0]
    }

    static async newData({ dataVal }) {

        const d = dataVal

        const newScsh = await pool.query(`
                WITH carrera_insertada AS (
                    INSERT INTO carreras (codigo_snies_programa, nombre_programa, titulo_otorgado, nivel_formacion, numero_semestres, creditos_totales, periodicidad_admision, id_universidad_fk, tipo_acreditacion) VALUES(
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
                    ${columnasProgramas} 
                    FROM carrera_insertada AS c
                    LEFT JOIN universidades AS u 
                        ON c.id_universidad_fk = u.id_universidad
                `, [
            d.snies,
            d.nombreprograma,
            d.titulo,
            d.nivel,
            d.semestres,
            d.creditos,
            d.periodo_admision,
            d.id_universidad,
            d.acreditacion
        ])

        return newScsh.rows[0]
    }

    static async deleteData({ id }) {
        const datos = await pool.query(`
                DELETE FROM carreras WHERE id_carrera = $1 
                `, [id])

        if (datos.rowCount === 0) {
            return false
        }

        return true
    }

    static async patchData({ id, input }) {
        const claves = Object.keys(input).filter(clave => Object.hasOwn(MAPA_COLUMNAS_PROGRAMAS, clave))

        if (claves.length === 0) {
            return null
        }
        const asignaciones = claves.map((clave, i) => `${MAPA_COLUMNAS_PROGRAMAS[clave]} = $${i + 1}`)

        const valores = claves.map(clave => input[clave])

        valores.push(id)
        const posicionId = valores.length

        const resultado = await pool.query(`
            WITH programa_actualizado AS (
                UPDATE carreras 
                SET ${asignaciones.join(', ')} 
                WHERE id_carrera = $${posicionId} 
                RETURNING * 
                ) 
            SELECT 
            ${columnasProgramas} 
            FROM programa_actualizado AS c 
            LEFT JOIN universidades AS u 
                ON c.id_universidad_fk = u.id_universidad
            `, valores
        )

        if (resultado.rowCount === 0) return false
        return resultado.rows[0]
    }
}