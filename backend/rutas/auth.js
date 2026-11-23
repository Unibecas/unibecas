//@ts-nocheck
import { Router } from 'express'
import { AuthControl } from '../controladores/auth.js'

export const authRouter = Router()

authRouter.post('/register', AuthControl.userRegisterCont)
authRouter.post('/login', AuthControl.userLoginCont)
authRouter.post('/logout', AuthControl.userLogoutCont)
// authRouter.post('/refresh', AuthControl.refreshCont)