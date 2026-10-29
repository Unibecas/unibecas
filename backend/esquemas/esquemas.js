// @ts-nocheck
import z from 'zod'

const esquemaBeca = z.object({
    nombrebeca: z.string({
        error: 'El campo debe ser un string'
    }).trim().min(1, {
        error: 'El campo no puede estar vacio'
    }).max(120, {
        error: 'Limite de caracteres: 120'
    }),
    vigencia: z.string({
        error: 'El campo nombre debe ser un string'
    }).min(1, {
        error: 'El campo no puede estar vacío'
    }).max(50, {
        error: 'Limite de caracteres: 50'
    }),
    descripcion: z.string({
        error: 'El campo debe ser string'
    }),
    aplicar: z.string({
        error: 'El campo nombre debe ser un string'
    }),
    modalidad: z.enum([
        'Pregrado',
        'Posgrado',
        'Tecnologica',
        'Tecnica',
        'Especialidad',
        'Doctorado'
    ], {
        error: 'El tipo de dato no es admitido'
    }),
    cobertura: z.string({
        error: 'El campo debe ser un string'
    }),
    iduniversidad: z.number({
        error: 'El dato debe ser un numero'
    }).int({
        error: 'El numero debe ser entero'
    }).positive({
        error: 'El numero debe ser positivo'
    }).max(80000, {
        error: 'El numero debe ser menor o igual a 80.000'
    }),
    estado: z.enum([
        'Activa',
        'En proceso',
        'Vencida',
        'Suspendida'
    ], {
        error: 'El tipo de dato ingresado es invalido'
    }),
    urlinfo: z.httpUrl({
        error: 'El dato debe de ser tipo URL'
    }).max(255, {
        error: 'Maximo 255 caracteres'
    }),
    proveedor: z.number({
        error: 'El dato debe ser un numero'
    }).int({
        error: 'El numero debe ser positivo'
    }).positive({
        error: 'El numero debe ser positivo'
    }).max(80000, {
        error: 'El numero debe ser menor o igual a 80.000'
    })
})

// Hacer esquemas de Universidades y Entidades

export function validarBeca(objeto) {
    return esquemaBeca.safeParse(objeto)
}

export function actualizarBeca(objeto) {
    return esquemaBeca.partial().safeParse(objeto)
}

// Hacer funciones de validacion de Universidades y Entidades
// Hacer funciones de actualizacion de Universidades y Entidades

// Esquema para GetAll - GET

const esquemaPaginacion = z.object({
    schsp: z.string({ error: 'Debe ser un string' })
        .min(4, 'Minimo 4 caracteres')
        .max(60, 'Maximo 60 caracteres')
        .regex(/^[^?&<>]+$/, "Caracteres no permitidos"),
    fmod: z.string({ error: 'Debe de ser un string' })
        .min(4, 'Minimo 4 caracteres')
        .max(25, 'Maximo 25 caracteres')
        .regex(/^[^?&<>]+$/, "Caracteres no permitidos"),
    limit: z.coerce
        .number({ error: 'El limite debe ser un numero' })
        .int('El numero para limite debe de ser un entero')
        .min(1, 'El numero debe de ser minimo 1')
        .max(100, 'El limite maximo es de 100')
        .default(10),
    offset: z.coerce
        .number({ error: 'El offset debe de ser un numero' })
        .int('Offset debe de ser un entero')
        .nonnegative('Offset no puede ser negativo')
        .default(0),
    id: z.coerce
        .number({ error: 'El ID debe de ser un numero' })
        .min(1, 'el ID como minimo tiene que ser 1')
        .int('ID debe de ser un entero')
        .nonnegative('Offset no puede ser negativo'),
})

export function validacionPaginacion(objeto) {
    return esquemaPaginacion.partial().safeParse(objeto)
}