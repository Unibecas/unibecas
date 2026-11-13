//@ts-nocheck
import { pool } from "./conexion.js"
import crypto from 'node:crypto'
import bycrypt from 'bcrypt'

export class AuthInfo {
  static async userRegister({ username, email, password }) {
    const userId = await crypto.randomUUID()
    const hashedPassword = await bycrypt.hash(password, 10)
    const newUser = await pool.query(`
      INSERT INTO usuarios (id_usuario, username, email, psswd) VALUES ($1, $2, $3, $4)
      RETURNING id_usuario AS id, username AS username, email AS email
    `, [userId, username, email, hashedPassword])
    return newUser.rows[0]
  }

  static async userLogin({ username, password }) {
    const user = await pool.query(`
      SELECT id_usuario AS id, username, email, rol, psswd FROM usuarios WHERE email = $1
    `, [username])
    if (user.rows.length === 0) return null

    const isPasswordValid = await bycrypt.compare(password, user.rows[0].psswd)
    if (!isPasswordValid) return null

    return user.rows[0]
  }

  static async userLogout({ id }) {
    // Implementar la lógica de cierre de sesión según sea necesario, por ejemplo, invalidando tokens o eliminando sesiones.
    if (!id) {
      return false
    }
    return { message: 'Usuario deslogueado con éxito' }
  }
}
