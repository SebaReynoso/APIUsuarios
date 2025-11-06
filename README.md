# Proyecto 1: APIUsuarios - CRUD Básico

## 🧩 Descripción

Aplicación CRUD para gestión de usuarios. Primer proyecto del portafolio técnico fullstack.

## 🛠️ Stack

- Frontend: HTML, CSS, JS
- Backend: Node.js + Express
- Base de datos: MongoDB

## 📦 Estructura

```
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
```

## 🚀 Instalación

```bash
npm install express mongoose dotenv
```

## 🧪 Pruebas

Por definir.

## 📈 Evolución

Este proyecto será base para versiones más avanzadas con autenticación, validaciones y despliegue.

Perfecto, Andrés. Vamos a complementar tu `README.md` con toda la documentación técnica que ya implementaste: configuración de ESLint, Prettier, scripts personalizados, estructura validada, y recomendaciones para desarrollo. Lo dejo listo para que puedas integrarlo directamente:

---

## 🧰 Configuración técnica

Este proyecto incluye herramientas de desarrollo para mantener calidad de código, formato uniforme y estructura profesional.

### 📦 Dependencias de desarrollo

```bash
npm install --save-dev eslint @eslint/js globals prettier nodemon
```

---

### 📐 Prettier

Prettier se usa para aplicar formato automático al guardar y mantener estilo consistente.

#### Instalación

```bash
npm install --save-dev prettier
```

#### Archivo `.prettierrc`

```json
{
  "semi": true,
  "singleQuote": false,
  "tabWidth": 2,
  "useTabs": false,
  "printWidth": 100,
  "trailingComma": "none"
}
```

#### Archivo `.prettierignore`

```
node_modules
dist
docs/*.png
```

#### Script en `package.json`

```json
"scripts": {
  "format": "prettier --write ."
}
```

#### Integración con VS Code

Archivo `.vscode/settings.json`:

```json
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode"
}
```

---

### 🧪 ESLint

ESLint se usa para validar calidad de código y detectar errores comunes.

#### Archivo `eslint.config.mjs`

```js
import js from '@eslint/js';
import globals from 'globals';
import { defineConfig } from 'eslint/config';

export default defineConfig([
  {
    files: ['**/*.js'],
    plugins: [js],
    extends: ['eslint:recommended'],
    languageOptions: {
      globals: globals.node,
      sourceType: 'commonjs'
    },
    rules: {
      semi: ['error', 'always'],
      quotes: ['error', 'double'],
      indent: ['error', 2],
      'no-console': 'off',
      'no-unused-vars': ['warn']
    }
  }
]);
```

#### Script en `package.json`

```json
"scripts": {
  "lint": "eslint ."
}
```

---

### 📂 Estructura extendida

```bash
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
├── .vscode/
│   └── settings.json
├── .prettierrc
├── .prettierignore
├── eslint.config.mjs
├── package.json
└── README.md
```

---

### 🧪 Validación

- **Linting**:
  ```bash
  npm run lint
  ```
- **Formato automático**:
  ```bash
  npm run format
  ```

---

## 📄 README.md — APIUsuarios | SCRU Día 2

```md
# 📦 APIUsuarios — SCRU Día 2

Proyecto backend en Node.js con Express, parte del roadmap SCRU.
Este módulo inicia la gestión de usuarios y estructura base para futuras funcionalidades.

---

## 🚀 Scripts disponibles

| Script       | Descripción                                      |
|--------------|--------------------------------------------------|
| `npm run dev`      | Inicia el servidor desde `backend/server.js` con nodemon |
| `npm run dev:src`  | Inicia el servidor desde `backend/src/index.js` con nodemon |
| `npm run lint`     | Ejecuta ESLint sobre el proyecto            |
| `npm run format`   | Formatea archivos con Prettier              |

---

## 🧩 Estructura actual del proyecto

```
📁 APIUsuarios/
├── 📁 backend/
│   ├── 📁 src/
│   │   └── index.js         # Servidor Express base
│   └── server.js            # Versión alternativa o anterior
├── 📁 frontend/              # Interfaz cliente (React, Vite, etc.)
├── 📁 docs/                  # Documentación técnica y diagramas
├── 📁 node_modules/          # Dependencias instaladas
├── 📁 .vscode/               # Configuración de entorno VS Code
├── .gitignore               # Exclusiones de Git
├── .prettierrc              # Configuración de Prettier
├── .prettierignore          # Exclusiones de Prettier
├── eslint.config.mjs        # Configuración de ESLint
├── docker-compose.yml       # Contenedores y servicios
├── package.json             # Metadatos y scripts del proyecto
├── package-lock.json        # Versionado de dependencias
├── README.md                # Documentación principal
└── setupProyecto.sh         # Script de inicialización

---
## 🗂️ Diagrama visual del proyecto

![Estructura SCRU Día 2](./docs/estructura-dia2.png)
---

## 🌐 Endpoints disponibles

- `GET /` → Respuesta de prueba: `"API Usuarios - Día 2 SCRU"`

---

## 🛠️ Tecnologías utilizadas

- Node.js
- Express
- Nodemon
- ESLint + Prettier
- Docker (estructura preparada)
- Git + SSH (flujo autenticado)

---
# APIUsuarios - SCRU Día 2

Servidor Express básico con estructura inicial para gestión de usuarios.

## Scripts
- `npm run dev`: Inicia el servidor en modo desarrollo con nodemon.

## Endpoints
- `GET /`: Respuesta de prueba.

## Estructura
- 📁 backend/ └── 📁 src/ └── index.js

## 📌 Notas técnicas

- El servidor principal para SCRU Día 2 se encuentra en `backend/src/index.js`.
- Se recomienda usar `npm run dev:src` para esta etapa.
- La autenticación con GitHub se realiza vía SSH (`git@github.com:SebaReynoso/APIUsuarios.git`).
- La estructura está preparada para escalar con rutas, controladores y modelos.

---
## Endpoints nuevos

- `GET /usuarios` → Devuelve listado de usuarios (mock)

