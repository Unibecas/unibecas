//@ts-nocheck
import { Router } from 'express'
import { EntidadesControl } from '../controladores/entidades.js'

export const entidadesRouter = Router()

entidadesRouter.get('/', EntidadesControl.recoveryAllCont)
entidadesRouter.post('/', EntidadesControl.newEntCont)
entidadesRouter.patch('/:id', EntidadesControl.patchEntCont)
entidadesRouter.delete('/:id', EntidadesControl.deleteEntCont)