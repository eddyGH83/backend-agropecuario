const express = require('express');


var morgan = require('morgan');                     // Carga de archivos


var cors = require('cors');                         /* Permite el uso compartido de 
                                                       recursos en una solicitud entre orígenes. 
                                                       (GET, PUT, POST, DELETE, etc.). */



// V A R I A B L E S    D E    E N T O R N O
require('dotenv').config()                          // Variables de entorno
const port = process.env.PORT;

const app = express();



// M I D D L E W A R E
app.use(cors());                                    // Uso compratido de recursos entre el back y front (Tiene que ser el primer middleware)
app.use(express.json());
app.use(morgan('tiny'));                            // Mensajes de peticiones en la consola
app.use('/', require('./routes/app.routes.js'));    // Ruta principal
app.use(express.static(__dirname + "/public"))






app.listen(port, () => {
    console.log(`⚡⚡ SCV-BackEnd, escuchando en el puerto: ${port} ⚡⚡`)
})