// @ts-nocheck
import { pool } from "../conexion.js"

export class userVersion {
  static async tokenVersion(id) {
    const data = await pool.query(`
      SELECT id_usuario AS id, username, token_version AS v, rol FROM usuarios WHERE id_usuario = $1   
      `, [id])

    if (data.rowCount === 0) {
      return false
    }
    return data.rows[0]
  }
}