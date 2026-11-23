// @ts-nocheck
import { Router } from 'express'
import { autenticacion } from '../middlewares/auth/authjwt.js'
import { UserCont } from '../controladores/user.js'

export const userRouter = Router()

userRouter.use(autenticacion.verificarJWT)
userRouter.get('/', UserCont.user)
userRouter.post('/', UserCont.userUpdate)
userRouter.post('/toggleAdmin', autenticacion.soloAdmin, UserCont.userSuper)
userRouter.delete('/:id', autenticacion.soloAdmin, UserCont.userDelete)