// 📦 Importar dependencias
const express = require('express');
const { saludarUsuario } = require('../utils'); // Ajustar ruta si utils.js está en otra carpeta

// 🚀 Inicializar Express
const app = express();
const PORT = process.env.PORT || 3000;

// 🏠 Ruta raíz informativa
app.get('/', (req, res) => {
  res.send('Servidor APIUsuarios activo. Usá /api/saludo/:nombre');
});

// 🎉 Ruta de saludo personalizado
app.get('/api/saludo/:nombre', (req, res) => {
  if (typeof saludarUsuario !== 'function') {
    return res.status(500).json({ error: 'Función saludarUsuario no disponible' });
  }
  const nombre = req.params.nombre;
  const saludo = saludarUsuario(nombre);
  res.json({ mensaje: saludo });
});

// 🧩 Activar servidor
app.listen(PORT, () => {
  console.log(`✅ Servidor corriendo en puerto ${PORT}`);
});