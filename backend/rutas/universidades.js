//@ts-nocheck
import { Router } from 'express'
import { UniversidadesControl } from '../controladores/universidades.js'

export const universidadesRouter = Router()

universidadesRouter.get('/', UniversidadesControl.allRecoveryCont)
universidadesRouter.post('/', UniversidadesControl.newDataUniCont)
universidadesRouter.patch('/:id', UniversidadesControl.patchDataUniCont)
universidadesRouter.delete('/:id', UniversidadesControl.deleteUniCont)