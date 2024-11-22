const { pool_agro } = require('../db/conexion');
const codificacion = {};

codificacion.listarCodificacion = async (req, res) => {
    const codificacion = await pool_agro.query('SELECT * FROM codificacion');
    // estado 200 es que todo esta bien
    res.status(200).json(codificacion.rows);    
}

export default codificacion;