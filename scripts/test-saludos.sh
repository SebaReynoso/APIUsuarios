#!/bin/bash

echo "📡 Enviando saludo a la API..."

curl -X POST http://localhost:3000/api/saludos \
-H "Content-Type: application/json" \
-d '{"nombres": ["andrés", "lucía", "sebastián"]}'

echo -e "\n✅ Petición completada."
