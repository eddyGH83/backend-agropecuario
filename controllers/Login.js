const { pool_scv } = require('../db/conexion');
const login = {};

/* Token */
const jwt = require('jsonwebtoken');

/* Para manejas variables de entorno */
require('dotenv').config()


/* ActiveDirectory2 js */
const ActiveDirectory = require('activedirectory2');

/* A */
login.autenticacion = async (req, res) => {

    const {
        usu,
        pass,
    } = req.body;

    console.log("🐧 Autenticación: ", usu);

    var sql





    var ad = new ActiveDirectory(config);

    ad.authenticate(usu + '@ine.gov.bo', pass, async function (err, auth) {
        if (err) {
            return res.status(200).json({
                success: false,
                msj: "Usuario no encontrado",
                token_scv: ""
            });
        }

        if (auth) {
            // Verificamos si existe en la tabla usuarios y además tiene permiso:
            const existeUsu = await (await pool_scv.query(`
            SELECT 
                id_usuario,
                usuario,
                nombres,
                apellidos,                
                correo_institucional,
                cargo,                
                departamento
            FROM usuario WHERE usuario='${usu}' and acceso=true
            `)).rows;

            if (existeUsu.length == 1) {
                // Token
                token = jwt.sign({
                    data: existeUsu // Se puede enviar datos del usuario
                }, 'Gbm!t8zom9@A!Mj7', { expiresIn: 60 * 60 * 24 * 30 }); // Por un mes

                return res.status(200).json({
                    success: true,
                    msj: "El usuario existe y tiene acceso",
                    token_scv: token
                });
            } else {
                return res.status(200).json({
                    success: false,
                    msj: "Acceso denegado",
                    token_scv: ""
                });
            }

        }
    });
}

module.exports = login;

