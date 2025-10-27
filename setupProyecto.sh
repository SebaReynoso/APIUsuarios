#!/bin/bash

# 📁 Ruta base del proyecto
PROYECTO="/mnt/d/Proyectos/Fullstack/APIUsuarios"

# 🏗️ Crear estructura de carpetas
mkdir -p "$PROYECTO"/{backend/{controllers,models,routes},frontend/{styles,scripts},docs}

# 📄 Archivo principal del backend
touch "$PROYECTO"/backend/server.js

# 🌐 Frontend básico
echo "<!DOCTYPE html><html><head><title>API Usuarios</title></head><body><h1>Bienvenido a APIUsuarios</h1></body></html>" > "$PROYECTO"/frontend/index.html

# 📄 README.md con plantilla base
cat <<EOF > "$PROYECTO"/README.md
# Proyecto 1: APIUsuarios - CRUD Básico

## 🧩 Descripción
Aplicación CRUD para gestión de usuarios. Primer proyecto del portafolio técnico fullstack.

## 🛠️ Stack
- Frontend: HTML, CSS, JS
- Backend: Node.js + Express
- Base de datos: MongoDB

## 📦 Estructura
\`\`\`
APIUsuarios/
├── backend/
│   ├── controllers/
│   ├── models/
│   ├── routes/
│   └── server.js
├── frontend/
│   ├── index.html
│   ├── styles/
│   └── scripts/
├── docs/
└── README.md
\`\`\`

## 🚀 Instalación
\`\`\`bash
npm install express mongoose dotenv
\`\`\`

## 🧪 Pruebas
Por definir.

## 📈 Evolución
Este proyecto será base para versiones más avanzadas con autenticación, validaciones y despliegue.

EOF

# 🧰 Instalación de herramientas clave en Ubuntu (WSL2)
sudo apt update
sudo apt install -y nodejs npm mongodb-clients

echo "✅ Proyecto APIUsuarios inicializado en $PROYECTO"
