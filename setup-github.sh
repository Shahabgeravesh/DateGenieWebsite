#!/bin/bash

echo "🚀 Setting up DateGenie website for GitHub Pages deployment..."
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the DateGenie website directory."
    exit 1
fi

echo "✅ Website files found"
echo ""

# Create .gitignore if it doesn't exist
if [ ! -f ".gitignore" ]; then
    echo "📝 Creating .gitignore file..."
    cat > .gitignore << EOF
# macOS
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Editor files
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log
npm-debug.log*

# Dependencies
node_modules/
EOF
    echo "✅ .gitignore created"
else
    echo "✅ .gitignore already exists"
fi

echo ""
echo "📋 Next steps to deploy on GitHub Pages:"
echo ""
echo "1. Go to https://github.com/new"
echo "2. Create a new repository named 'dategenie-website' (or any name you prefer)"
echo "3. Make it PUBLIC (required for free GitHub Pages)"
echo "4. Don't initialize with README (we already have files)"
echo "5. Copy the repository URL"
echo ""
echo "6. Then run these commands:"
echo "   git remote add origin [YOUR_REPO_URL]"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "7. Go to your repository settings → Pages"
echo "8. Select 'Deploy from a branch'"
echo "9. Choose 'main' branch and '/ (root)' folder"
echo "10. Click Save"
echo ""
echo "🌐 Your website will be available at:"
echo "   https://[YOUR_USERNAME].github.io/[REPO_NAME]"
echo ""
echo "📱 Don't forget to update the domain in your files:"
echo "   - Update sitemap.xml URLs"
echo "   - Update robots.txt Host"
echo "   - Update meta tags with your actual domain"
echo ""
echo "✨ Happy deploying!"
