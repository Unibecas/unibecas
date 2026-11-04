//@ts-nocheck
import { Router } from 'express'
import { BecasControl, ProgramasControl } from '../controladores/main.js'

export const mainRouter = Router()

// Becas Universitarias
mainRouter.get('/becas', BecasControl.allRecoveryCont)
mainRouter.get('/becas/:id', BecasControl.idRecoveryCont)
mainRouter.post('/becas', BecasControl.newDataCont)
mainRouter.delete('/becas/:id', BecasControl.deleteDataCont)
mainRouter.patch('/becas/:id', BecasControl.patchDataCont)

// Programas Universitarios
mainRouter.get('/programas', ProgramasControl.allRecoveryCont)
mainRouter.get('/programas/:id', ProgramasControl.idRecoveryCont)
mainRouter.post('/programas', ProgramasControl.newDataCont)
mainRouter.delete('/programas/:id', ProgramasControl.deleteDataCont)
mainRouter.patch('/programas/:id', ProgramasControl.patchDataCont)