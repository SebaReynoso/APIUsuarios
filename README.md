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


