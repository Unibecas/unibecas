// @ts-nocheck
import { pool } from "./conexion.js"

const columnas = `username AS usuario, email AS email, estado_est AS estado, descripcion AS descripcion`

export class UserInfo {
  static async user({ id, admin, bulk, limit, offset }) {
    const params = []
    let querystmt = `
      SELECT
      ${admin || (admin && bulk) ? columnas + `, id_usuario AS id` : columnas}
      FROM usuarios
      WHERE 1=1
      `

    querystmt += admin && bulk ? '' : `AND id_usuario = $${params.push(id)}`
    querystmt += admin && bulk ? ` LIMIT $${params.push(limit + 1)}` : ''
    querystmt += admin && bulk ? ` OFFSET $${params.push(offset)}` : ''

    const usuario = await pool.query(querystmt, params)
    const hasMore = usuario.rows.length > limit
    const info = () => {
      if (admin === true) {
        if (admin === true && usuario.rowCount === 1) {
          return usuario.rows[0]
        }
        return {
          datos: hasMore ? usuario.rows.slice(0, limit) : usuario.rows,
          meta: {
            limit: limit,
            offset: offset,
            hasMore: hasMore
          }
        }
      }

      return usuario.rows[0]
    }

    return info()
  }

  static async userUpdate({ email, estado, descripcion, id }) {
    const params = []
    let querystmt = `
    UPDATE usuarios
    SET
    `
    querystmt += email ? ` email = $${params.push(email)}` : ''
    querystmt += estado ? `${email ? ',' : ''} estado_est = $${params.push(estado)}` : ''
    querystmt += descripcion ? `${estado || email ? ',' : ''} descripcion = $${params.push(descripcion)}` : ''
    querystmt += ` WHERE id_usuario = $${params.push(id)}`
    
    const datos = await pool.query(querystmt, params)
    if (datos.rowCount === 0) return false
    return true
  }

  static async userSuper({ rol, id }) {
    const params = []
    let querystmt = `
    UPDATE usuarios
    SET
    `
    querystmt += rol ? ` rol = 'Admin'` : `rol = 'Usuario'`
    querystmt += ` WHERE id_usuario = $${params.push(id)}`
    const datos = await pool.query(querystmt, params)
    if (datos.rowCount === 0) return false
    return true
  }

  static async userDelete({ id }) {
    const datos = await pool.query(`
      DELETE FROM usuarios WHERE id_usuario = $1
      `, [id])

      if (datos.rowCount === 0) return false
      return true
  }
}