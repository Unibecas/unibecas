//@ts-nocheck
import { Router } from 'express'
import { UniversidadesControl } from '../controladores/universidades.js'
import { autenticacion } from '../middlewares/auth/authjwt.js'

export const universidadesRouter = Router()

universidadesRouter.use(autenticacion.verificarJWT, autenticacion.soloAdmin)
universidadesRouter.get('/', UniversidadesControl.allRecoveryCont)
universidadesRouter.post('/', UniversidadesControl.newDataUniCont)
universidadesRouter.patch('/:id', UniversidadesControl.patchDataUniCont)
universidadesRouter.delete('/:id', UniversidadesControl.deleteUniCont)