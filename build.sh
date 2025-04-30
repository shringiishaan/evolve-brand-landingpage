#!/bin/bash

# Exit on error
set -e

echo "🚀 Starting build process..."

# Clean up previous builds
echo "🧹 Cleaning up previous builds..."
rm -rf .next
rm -rf node_modules

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Install required ESLint plugins
echo "🔧 Installing ESLint plugins..."
npm install --save-dev @typescript-eslint/eslint-plugin @typescript-eslint/parser

# Create ESLint config if it doesn't exist
if [ ! -f .eslintrc.json ]; then
    echo "📝 Creating ESLint configuration..."
    cat > .eslintrc.json << EOL
{
  "extends": [
    "next/core-web-vitals",
    "plugin:@typescript-eslint/recommended"
  ],
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"]
}
EOL
fi

# Build the application
echo "🏗️ Building application..."
npm run build

echo "✅ Build completed successfully!"
echo "📁 The production build is available in the .next directory" 