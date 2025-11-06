// 🔁 Función con arrow function (versión alternativa)
const saludoSimple = (nombre) => `Hola, ${nombre}!`;

// 🔄 Uso de map
const capitalizarNombres = (nombres) =>
  nombres.map((nombre) => nombre.charAt(0).toUpperCase() + nombre.slice(1));

// 🔍 Uso de filter
const filtrarActivos = (usuarios) =>
  usuarios.filter((usuario) => usuario.activo);

// ⏳ Función async/await
const obtenerDatos = async (url) => {
  try {
    const respuesta = await fetch(url);
    const datos = await respuesta.json();
    return datos;
  } catch (error) {
    console.error("Error al obtener datos:", error);
    return null;
  }
};

// 🧪 Validación simple de email
const esEmailValido = (email) =>
  /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);

// 🔠 Capitalizar un solo nombre
function capitalizarNombre(nombre) {
  return nombre.charAt(0).toUpperCase() + nombre.slice(1);
}

// 🎉 Saludo personalizado con capitalización
function saludarUsuario(nombre) {
  return `¡Hola ${capitalizarNombre(nombre)}!`;
}

// 📦 Exportar todas las funciones
module.exports = {
  saludoSimple,
  capitalizarNombre,
  capitalizarNombres,
  saludarUsuario,
  filtrarActivos,
  obtenerDatos,
  esEmailValido,
};