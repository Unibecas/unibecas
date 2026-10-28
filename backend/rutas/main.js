//@ts-nocheck
import { Router } from 'express'
import { MainControl } from '../controladores/main.js'

export const mainRouter = Router()

// --------- ENRUTADOR -------------
// Y que cada ruta use su respectivo controlador para procesar su request

mainRouter.get('/becas', MainControl.allRecoveryCont)
mainRouter.get('/becas/:id', MainControl.idRecoveryCont)
mainRouter.post('/becas', MainControl.newDataCont)
mainRouter.delete('/becas/:id', MainControl.deleteDataCont)
mainRouter.patch('/becas/:id', MainControl.patchDataCont)