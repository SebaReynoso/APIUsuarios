const mongoose = require("mongoose");

const mongoURI = "mongodb://admin:admin123@mongodb:27017/?authSource=admin";

const conectarMongo = async () => {
  try {
    await mongoose.connect(mongoURI, {
      useNewUrlParser: true,
      useUnifiedTopology: true
    });
    console.log("✅ Conexión a MongoDB exitosa");
  } catch (error) {
    console.error("❌ Error al conectar a MongoDB:", error.message);
  }
};

module.exports = conectarMongo;
