// Cliente postgreSQL
const { Pool } = require('pg')

// Variables de entorno
require('dotenv').config()

// Conexion a la Base de Datos: db_scv
const pool_scv = new Pool({
    user:     process.env.DB_SCV_USUARIO,
    host:     process.env.DB_SCV_HOST,
    database: process.env.DB_SCV_NOMBRE,
    password: process.env.DB_SCV_PASSWORD,
    port:     process.env.DB_SCV_PUERTO
})


// Conexion a la Base de Datos: db_agropecuario
const pool_agro = new Pool({
    user:     process.env.DB_AGRO_USUARIO,
    host:     process.env.DB_AGRO_HOST,
    database: process.env.DB_AGRO_NOMBRE,
    password: process.env.DB_AGRO_PASSWORD,
    port:     process.env.DB_AGRO_PUERTO
})



/* 
 DB_SCV_HOST=localhost
 DB_SCV_USUARIO=postgres
 DB_SCV_PASSWORD= toor  # toor
 DB_SCV_PUERTO=5432
 DB_SCV_NOMBRE=db_scv

*/
// Export 
module.exports = { pool_scv, pool_agro }