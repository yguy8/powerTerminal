#!/bin/bash

#Paso 1: Limpiar el directorio (excepto .git)
echo "Eliminando contenido del proyecto..."
find . -mindepth 1 ! -regex '^./\.git\(/.*\)?' -exec rm -rf {} +

#Paos 2: Crear estructura base
echo "Creando estructura base..."
mkdir src
touch src/index.js
echo "console.log('Hello, Clara!');" > src/index.js

# Paso 3: Crear package.json
echo "Inicializando package.json..."
npm init -y

# Paso 4: Crear .gitignore
echo "Generando .gitignore..."
cat <<EOF > .gitignore
# Node.js
node_modules/
.env
package-lock.json
dist/
logs/
*.log

# Sistema
.DS_Store
Thumbs.db
EOF

# Paso 5: Commit y push forzado
echo "🧷 Haciendo commit y push forzado..."
git add .
git commit -m "🔄 Reinicio del proyecto con estructura base"
git push origin main #--force

echo "Proyecto reiniciado y subido a GitHub con éxito."
