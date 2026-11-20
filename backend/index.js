//@ts-nocheck
// ------------------ Config ------------------
import { PORT } from './env.js'
// ------------------ Setup ------------------
import express from 'express'
// !! Evaluar helmet como middleware de seguridad ??
import cookieParser from 'cookie-parser'
import { mainRouter } from './rutas/main.js'
import { entidadesRouter } from './rutas/entidades.js'
import { universidadesRouter } from './rutas/universidades.js'
import { authRouter } from './rutas/auth.js'
import { corsMiddleware } from './middlewares/cors.js'
import { cabecerasJSON, bodyJSON } from './middlewares/cabeceras.js'
import { expressJsonify } from './middlewares/expressJsonify.js'
import { originErr } from './middlewares/originErr.js'
import { errGlobal } from './middlewares/errGlobal.js'
import { validacionesErr } from './middlewares/validacionesErr.js'
import { postgresqlErr } from './middlewares/postgresqlErr.js'
import { expressErr } from './middlewares/expressErr.js'
import { jwtErr } from './middlewares/jwtErr.js'
import { horaActual } from './utils/funciones/funciones.js'

const app = express()
app.disable('x-powered-by')
app.use(corsMiddleware())

app.use(cabecerasJSON)
app.use(express.json())
app.use(bodyJSON)
app.use(expressJsonify)
app.use(cookieParser())

app.get('/', (req, res) => {
    res.status(200).send('<p>UniBecas API</p>')
})

// Recursos
app.use('/auth', authRouter)
app.use('/main', mainRouter)
app.use('/entidades', entidadesRouter)
app.use('/universidades', universidadesRouter)

app.use((req, res) => {
    res.status(404).json({ error: '404 - La ruta no existe' })
})

// Middlewares de errores  
app.use(validacionesErr)
app.use(jwtErr)
app.use(postgresqlErr)
app.use(originErr)
app.use(expressErr)
app.use(errGlobal)

app.listen(PORT, () => {
    console.log(`[Server - ${horaActual()}] Corriendo en el puerto: http://localhost:${PORT}`)
})