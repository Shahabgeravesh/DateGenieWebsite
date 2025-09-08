#!/bin/bash

# Script to update domain references in website files
# Usage: ./update-domain.sh yourdomain.com

if [ $# -eq 0 ]; then
    echo "❌ Error: Please provide your domain name"
    echo "Usage: ./update-domain.sh yourdomain.com"
    echo "Example: ./update-domain.sh dategenie.app"
    exit 1
fi

DOMAIN=$1
echo "🔄 Updating domain references to: $DOMAIN"
echo ""

# Update sitemap.xml
if [ -f "sitemap.xml" ]; then
    echo "📝 Updating sitemap.xml..."
    sed -i.bak "s|https://dategenie.app|https://$DOMAIN|g" sitemap.xml
    echo "✅ sitemap.xml updated"
else
    echo "⚠️  sitemap.xml not found"
fi

# Update robots.txt
if [ -f "robots.txt" ]; then
    echo "📝 Updating robots.txt..."
    sed -i.bak "s|Host: https://dategenie.app|Host: https://$DOMAIN|g" robots.txt
    sed -i.bak "s|Sitemap: https://dategenie.app/sitemap.xml|Sitemap: https://$DOMAIN/sitemap.xml|g" robots.txt
    echo "✅ robots.txt updated"
else
    echo "⚠️  robots.txt not found"
fi

# Update index.html
if [ -f "index.html" ]; then
    echo "📝 Updating index.html..."
    sed -i.bak "s|https://dategenie.app|https://$DOMAIN|g" index.html
    echo "✅ index.html updated"
else
    echo "⚠️  index.html not found"
fi

# Update privacy-policy.html
if [ -f "privacy-policy.html" ]; then
    echo "📝 Updating privacy-policy.html..."
    sed -i.bak "s|https://dategenie.app|https://$DOMAIN|g" privacy-policy.html
    echo "✅ privacy-policy.html updated"
else
    echo "⚠️  privacy-policy.html not found"
fi

# Update terms-of-service.html
if [ -f "terms-of-service.html" ]; then
    echo "📝 Updating terms-of-service.html..."
    sed -i.bak "s|https://dategenie.app|https://$DOMAIN|g" terms-of-service.html
    echo "✅ terms-of-service.html updated"
else
    echo "⚠️  terms-of-service.html not found"
fi

# Update app-support.html
if [ -f "app-support.html" ]; then
    echo "📝 Updating app-support.html..."
    sed -i.bak "s|https://dategenie.app|https://$DOMAIN|g" app-support.html
    echo "✅ app-support.html updated"
else
    echo "⚠️  app-support.html not found"
fi

# Update site.webmanifest
if [ -f "site.webmanifest" ]; then
    echo "📝 Updating site.webmanifest..."
    sed -i.bak "s|https://dategenie.app|https://$DOMAIN|g" site.webmanifest
    echo "✅ site.webmanifest updated"
else
    echo "⚠️  site.webmanifest not found"
fi

# Update CNAME file
if [ -f "CNAME" ]; then
    echo "📝 Updating CNAME file..."
    echo "$DOMAIN" > CNAME
    echo "✅ CNAME file updated"
else
    echo "📝 Creating CNAME file..."
    echo "$DOMAIN" > CNAME
    echo "✅ CNAME file created"
fi

echo ""
echo "🎉 Domain update complete!"
echo ""
echo "📋 Next steps:"
echo "1. Review the changes: git diff"
echo "2. Commit the updates: git add . && git commit -m 'Update domain to $DOMAIN'"
echo "3. Push to GitHub: git push"
echo ""
echo "🔍 Check these files for any remaining 'dategenie.app' references:"
echo "   grep -r 'dategenie.app' . --exclude-dir=.git"
echo ""
echo "✨ Your website will be live at: https://$DOMAIN"
