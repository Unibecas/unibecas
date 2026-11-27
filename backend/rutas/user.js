// @ts-nocheck
import { Router } from 'express'
import { autenticacion } from '../middlewares/auth/authjwt.js'
import { UserAdminCont, UserCont } from '../controladores/user.js'

export const userRouter = Router()
// User
userRouter.use(autenticacion.verificarJWT)
userRouter.get('/me', UserCont.user)
userRouter.patch('/me', UserCont.userUpdate)
//-// Metodos para reset contraseña
userRouter.post('/me', UserCont.userChangePsswd)
   
// Admin
userRouter.use(autenticacion.soloAdmin)
userRouter.get('/', UserAdminCont.user)
userRouter.get('/:id', UserAdminCont.user)
userRouter.post('/', UserAdminCont.userSuper)
userRouter.patch('/:id', UserCont.userUpdate)
userRouter.delete('/:id', UserAdminCont.userDelete)