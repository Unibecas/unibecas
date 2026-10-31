//@ts-nocheck
const metodos = [
    'POST',
    'PUT',
    'PATCH'
]

export const cabecerasJSON = (req, res, next) => {
    if (metodos.includes(req.method) && !req.is('application/json')) {
        res.status(415).json({
            error: `El metodo ${req.method} no puede ser tratado si no es C/T -> APP/JSON`
        })
        return
    } else if (!req.body) {
        res.status(400).json({
            error: `La petición ${req.method} esta vacía`
        })
    }
    next()
}