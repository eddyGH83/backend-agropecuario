const express = require('express');
const multer = require('multer');                   // Carga de archivos
const upload = multer({ dest: 'files/' });          // Destino de los archivos
const router = express.Router();

// Controllers
const ejemplo = require('../controllers/Ejemplo');
const login = require('../controllers/Login');
const cuenta = require('../controllers/Cuenta');
const diccionarios= require('../controllers/diccionarios.controller.js');




// Rutas
router.get('/listar', ejemplo.listar);
router.post('/listar2', ejemplo.listar2);
router.post('/cargarArchivo', upload.single('imagenPerfil'), ejemplo.cargarArchivo);



/*************************************************************************************************
 *                                          L O G I N                                            *
 *************************************************************************************************/
router.post('/autenticacion', login.autenticacion);



/*************************************************************************************************
 *                                       A C C E S O                                             *
 *************************************************************************************************/
router.post('/accesoScv', cuenta.accesoScv);



/*************************************************************************************************
 *                                D I C C I O N A R I O S                                        *
 *************************************************************************************************/
router.post('/listarCatalogos', diccionarios.listarCatalogos);





module.exports = router;