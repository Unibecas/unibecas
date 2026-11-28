// @ts-nocheck
import { JWT_KEY } from '../../env.js'
import jwt from 'jsonwebtoken'

export const GenToken = ({ id, v }) => {
  return jwt.sign({
      id: id,
      v: v
    }, 
    JWT_KEY, 
    {
      expiresIn: '1h'
    })
}