
# 🚀 APIUsuarios - Sistema de Gestión de Usuarios

APIUsuarios es una solución robusta desarrollada con **Node.js** y **Express**, diseñada bajo una arquitectura de microservicios. Este proyecto permite la gestión integral de usuarios, incluyendo autenticación y registro, preparada para ser desplegada en entornos de contenedores.

## 🛠️ Tecnologías Utilizadas

* **Backend:** Node.js, Express.js.
* **Frontend:** React (Vite) / JavaScript (según tu configuración).
* **Contenedores:** Docker & Docker Compose.
* **Calidad de Código:** ESLint, Prettier.
* **Base de Datos:** MySQL / PostgreSQL (especifica la que uses).

## 📋 Requisitos Previos

Asegúrate de tener instalado:
* [Node.js](https://nodejs.org/) (v18 o superior)
* [Docker](https://www.docker.com/)
* [Git](https://git-scm.com/)

## 🚀 Instalación y Configuración

Sigue estos pasos para levantar el proyecto localmente:

### 1. Clonar el repositorio
```bash
git clone [https://github.com/SebaReynoso/APIUsuarios.git](https://github.com/SebaReynoso/APIUsuarios.git)
cd APIUsuarios

```

### 2. Configurar variables de entorno

Crea un archivo `.env` en la raíz (o dentro de `/backend`) basándote en el ejemplo:

```bash
cp .env.example .env

```

*Edita el archivo `.env` con tus credenciales de base de datos.*

### 3. Instalar dependencias

Contamos con un script de automatización para facilitar esto:

```bash
./setupProyecto.sh

```

*O manualmente en cada carpeta:*

```bash
cd backend && npm install
cd ../frontend && npm install

```

## 🐳 Ejecución con Docker

Para levantar todo el ecosistema (Base de Datos + API + Frontend):

```bash
docker-compose up --build

```

## 🧹 Mantenimiento

Para limpiar archivos duplicados o temporales, puedes ejecutar:

```bash
./limpiaDuplicados.sh

```

---

© 2024 - Desarrollado por [Sebastian Reynoso](https://www.google.com/search?q=https://github.com/SebaReynoso)

