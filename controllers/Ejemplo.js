const { pool_local } = require('../db/conexion');

const express = require('express');


const fs = require('node:fs');                          // Para modificar archivos




const app = express();


var pdf = require('html-pdf');                      // html-pdf
//var fs = require('fs');
//var html = fs.readFileSync('./test/businesscard.html', 'utf8');
//var options = { format: 'Letter' };


const ejemplo = {};


//
ejemplo.listar = async (req, res) => {

    const html = `
    <!doctype html>
    <html>
       <head>
            <meta charset="utf-8">
            <title>PDF Result Template</title>
            <style>
                h1 {
                    color: green;
                }
            </style>
        </head>
        <body>
            <div id="pageHeader" style="border-bottom: 1px solid #ddd; padding-bottom: 5px;">
                <p>Anartz - Ejemplo de cabecera en HTML PDF</p>
            </div>
            <div id="pageFooter" style="border-top: 1px solid #ddd; padding-top: 5px;">
                <p style="color: #666; width: 70%; margin: 0; padding-bottom: 5px; text-align: let; font-family: sans-serif; font-size: .65em; float: left;"><a href="https://anartz-mugika.com" target="_blank">https://anartz-mugika.com</a></p>
                <p style="color: #666; margin: 0; padding-bottom: 5px; text-align: right; font-family: sans-serif; font-size: .65em">Página {{page}} de {{pages}}</p>
            </div>
            <h1>Título en el PDF creado con el paquete html-pdf</h1>
            <p>Generando un PDF con un HTML sencillo</p>
        </body>
    </html>
    `;

    pdf.create(html).toFile('./public/pdf/html-pdf3.pdf', function (err, res) {
        if (err) {
            console.log(err);
        } else {
            console.log(res);
        }
    });

    res.send('Pdf creado');
}


//
ejemplo.listar2 = async (req, res) => {
    var { usuario, pass } = req.body;

    res.json({
        usu: usuario,
        pass: pass
    })
}


// carga de archivo
ejemplo.cargarArchivo = async (req, res) => {
    var { id } = req.body
    console.log("id: " + id);

    console.log(req.file);
    const newPath = `./files/${req.file.originalname}`;
    fs.renameSync(req.file.path, newPath);
    res.send('Termina');
}


module.exports = ejemplo;