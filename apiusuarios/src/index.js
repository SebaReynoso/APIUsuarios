const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const usuariosRoutes = require('./routes/usuarios');
app.use('/usuarios', usuariosRoutes);

app.use(express.json());

app.get('/', (req, res) => {
  res.send('API Usuarios - Día 2 SCRU');
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en puerto ${PORT}`);
});