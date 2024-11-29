const { pool_agro } = require('../db/conexion');
const diccionarios = {};


/*
SEGURIDAD.Se está usando parametrización de consultas para evitar inyección SQL: $1, $2 [cat_cuest, catalogo]
            Ejemplo de inyección SQL:
            {
            "cat_cuest": "1'; DROP TABLE codificacion.catalogo_upa_comunal; --",
            "catalogo": "anything"
            }
            La consulta SQL resultante sería:
            SELECT * FROM codificacion.catalogo_upa_comunal WHERE cat_cuest = '1'; DROP TABLE codificacion.catalogo_upa_comunal; --' and catalogo = 'anything'
*/


// Listar catalogos
diccionarios.listarCatalogos = async (req, res) => {

    var { cat_cuest, catalogo } = req.body;    

    try {
        const catalogos = await pool_agro.query(`
            SELECT * FROM codificacion.catalogo_upa_comunal 
            WHERE cat_cuest = $1 and catalogo = $2`, [cat_cuest, catalogo]);        
        res.status(200).json({
            success: true,
            data: catalogos.rows,
            message: "Catalogos listados correctamente"
        });
    } catch (error) {
        console.log("🚫 Error al listar catalogos: ", error);
        res.status(500).json({
            success: false,
            data: [],
            message: "Error al listar catalogos"
        });        
    }

}

// Listar descripcion de catalogos
diccionarios.listarDescripcionCatalogos = async (req, res) => {      
    console.log("hfsjhf kshfkjsh fskjfh ksdhf ksdhf ksd");

    const { cuestionario } = req.body;

    console.log("cuestionario: ", cuestionario);
    
    
    try {
        const catalogos = await pool_agro.query(`SELECT catalogo || ' | ' || cat_desc cat_desc, catalogo FROM codificacion.catalogo_upa_comunal WHERE cat_cuest=$1 GROUP BY catalogo, cat_desc ORDER BY catalogo ASC`,[cuestionario]);
        res.status(200).json({
            success: true,
            data: catalogos.rows,
            message: "Catalogos listados correctamente"
        });
    } catch (error) {
        console.log("🚫 Error al listar catalogos: ", error);
        res.status(500).json({
            success: false,
            data: [],
            message: "Error al listar catalogos"
        });        
    }

}




// Editar catalogos
diccionarios.editarCatalogos = async (req, res) => {

    var { id_catalogo,  } = req.body;    

}




module.exports = diccionarios;
