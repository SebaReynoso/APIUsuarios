#!/bin/bash
# Ruta base del proyecto
BASE="backend/src"

# Carpeta incorrecta
DUPLICADA="$BASE/routers"
CORRECTA="$BASE/routes"

echo "🔍 Verificando carpeta duplicada: $DUPLICADA"

# Verifica si existe la carpeta duplicada
if [ -d "$DUPLICADA" ]; then
  echo "⚠️ Se detectó la carpeta duplicada '$DUPLICADA'."
  echo "📁 Contenido:"
  ls "$DUPLICADA"
  echo ""
  read -p "¿Querés mover los archivos a '$CORRECTA' y borrar '$DUPLICADA'? (s/n): " CONFIRMAR

  if [ "$CONFIRMAR" == "s" ]; then
    # Crea la carpeta correcta si no existe
    mkdir -p "$CORRECTA"

    # Mueve los archivos
    mv "$DUPLICADA"/* "$CORRECTA"/

    # Borra la carpeta duplicada
    rm -r "$DUPLICADA"

    echo "✅ Archivos movidos y carpeta '$DUPLICADA' eliminada."
  else
    echo "❌ Operación cancelada. No se realizaron cambios."
  fi
else
  echo "✅ No se detectó carpeta duplicada. Todo limpio."
fi