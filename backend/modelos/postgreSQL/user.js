// @ts-nocheck
import { pool } from "./conexion.js"
import bcrypt from 'bcrypt'

const columnas = `username AS usuario, email AS email, estado_est AS estado, descripcion AS descripcion`

export class UserInfo {
  static async user({ id, limit, offset, admin }) {
    const params = []
    let querystmt = `
      SELECT
      ${admin ? columnas + `, rol AS rol, id_usuario AS id` : columnas}
      FROM usuarios
      WHERE 1=1
      `

    querystmt += id ? ` AND id_usuario = $${params.push(id)}` : ''
    querystmt += id && admin && !limit ? '' : ` LIMIT $${params.push(limit + 1)}`
    querystmt += id && admin && !offset ? '' : ` OFFSET $${params.push(offset)}`

    const usuario = await pool.query(querystmt, params)
    const hasMore = usuario.rows.length > limit

    return id ? usuario.rows[0] : {
      datos: hasMore ? usuario.rows.slice(0, limit) : usuario.rows,
            meta: {
                limit: limit,
                offset: offset,
                hasMore: hasMore
            }
    }
  }

  static async userUpdate({ email, estado, descripcion, id }) {
    const params = []
    let querystmt = `
    UPDATE usuarios
    SET
    `
    querystmt += email ? ` email = $${params.push(email)}` : ''
    querystmt += estado ? `${email ? ',' : ''} estado_est = $${params.push(estado)}` : ''
    querystmt += descripcion || descripcion === null ? `${estado || email ? ',' : ''} descripcion = $${params.push(descripcion)}` : ''
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

  static async newVersionToken({ id }) {
    await pool.query(`
      UPDATE usuarios
      SET token_version = token_version + 1
      WHERE id_usuario = $1
      RETURNING token_version
      `, [id])
  }

  static async userDelete({ id }) {
    const datos = await pool.query(`
      DELETE FROM usuarios WHERE id_usuario = $1
      `, [id])

      if (datos.rowCount === 0) return false
      return true
  }

  static async userChangePsswd({ id, actual, nueva, cerrarSesiones}) {
    const datos = await pool.query(`
      SELECT psswd AS guardada FROM usuarios WHERE id_usuario = $1
      `, [id])
    
    const isPasswordValid = await bcrypt.compare(actual, datos.rows[0].guardada)
    if (!isPasswordValid) return false
    
    const newPassword = await bcrypt.hash(nueva, 10)
    const querystmt = `
      UPDATE usuarios
      SET psswd = $1 ${cerrarSesiones ? `, token_version = token_version + 1` : ''}
      WHERE id_usuario = $2
      ${cerrarSesiones ? ` RETURNING token_version AS t` : ''}
    `
    const data = await pool.query(querystmt, [newPassword, id])
    
    return cerrarSesiones ? data.rows[0].t : true
  }
}