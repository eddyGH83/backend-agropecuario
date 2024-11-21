const { pool_scv } = require('../db/conexion');
const cuenta = {};


/* Token */
const jwt = require('jsonwebtoken');


/* EDITAR CARGO DEL USUARIO LOGUEADO */
/* cuenta.editarCargo = async (req, res) => {
    const id_usuario = parseInt(req.params.id);
    const {
        cargo,
    } = req.body;

    try {
        await (await pool.query(`
        UPDATE  usuario
        SET
            cargo = UPPER('${cargo}')
        WHERE id_usuario = ${id_usuario}
        `));
        res.send("Registro modificado!!");
    } catch (error) {
        console.log(error);
    }
} */


/* ACCESO */
cuenta.accesoMiCuenta = async (req, res) => {
    const {
        token,
    } = req.body;

    jwt.verify(token, 'Gbm!t8zom9@A!Mj7', async function (err, token) {
        if (err) {
            return res.json({
                ok: false
            })
        } else {
            var id_usu = token.data[0].id_usuario;

            // Datos del usuario
            const datosUsuario = await (await pool_scv.query(`
            SELECT 
            usuario,
                id_usuario,
                nombres,
                apellidos,
                correo_institucional,
                cargo,
                rol
            FROM usuario
            WHERE id_usuario = ${id_usu}
            `)).rows;

            // Rol 
            const rolUsu = await (await pool.query(`
            SELECT 
                nombre
            FROM roles
            WHERE id_rol = ${datosUsuario[0].rol}
            `)).rows;
            datosUsuario[0].rol = rolUsu[0].nombre;

            /*  */
            return res.json({
                ok: true,
                datosUsuario: datosUsuario[0]
            })
        }
    });

}


/* ACCESO SCV */
cuenta.accesoScv = async (req, res) => {
    const {
        token_scv,
    } = req.body;

    console.log("token_scv" + token_scv);

    jwt.verify(token_scv, 'Gbm!t8zom9@A!Mj7', async function (err, token_scv) {
        if (err) {
            return res.json({
                success: false,
                usuario: []
            })
        } else {
            var id_usu = token_scv.data[0].id_usuario;

            // Datos del usuario
            const datosUsuario = await (await pool_scv.query(`
            SELECT                 
                usuario,
                correo_institucional
            FROM usuario
            WHERE id_usuario = ${id_usu}
            `)).rows;

            const permisos = await (await pool_scv.query(`
            select r.* from usuario as u
            join rol_permiso r
            on
            u.id_rol_permiso  = r.id_rol_permiso 
            where 
            u.id_usuario = ${id_usu}
            `)).rows;

            return res.json({
                success: true,
                usuario: datosUsuario[0],
                permisos: permisos[0]
            })
        }
    });

}



module.exports = cuenta;