//@ts-nocheck
import { Router } from 'express'
import { EntidadesControl } from '../controladores/entidades.js'
import { autenticacion } from '../middlewares/auth/authjwt.js'

export const entidadesRouter = Router()

entidadesRouter.use(autenticacion.verificarJWT, autenticacion.soloAdmin)
entidadesRouter.get('/', EntidadesControl.recoveryAllCont)
entidadesRouter.post('/', EntidadesControl.newEntCont)
entidadesRouter.patch('/:id', EntidadesControl.patchEntCont)
entidadesRouter.delete('/:id', EntidadesControl.deleteEntCont)