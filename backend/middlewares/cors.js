//@ts-nocheck
import cors from 'cors'
import { ErrorCors } from '../utils/errores/errorcharcount.js'

const ACCEPTED_ORIGINS = [
    "https://unibecas.onrender.com",
    "http://localhost:5173"
]

export const corsMiddleware = ({ acceptedOrigins = ACCEPTED_ORIGINS } = {}) => cors({
    origin: (origin, callback) => {
        if (!origin || acceptedOrigins.includes(origin)) return callback(null, true)
        return callback(new ErrorCors('Origen no permitido - CORS'))
    }
})