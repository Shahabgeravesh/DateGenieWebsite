# Custom Domain Setup for DateGenie Website

## 🌐 Setting up your GoDaddy domain with GitHub Pages

### Step 1: Configure GitHub Pages for Custom Domain

1. **Push your website to GitHub** (if you haven't already)
2. **Go to your repository** → Settings → Pages
3. **In the "Custom domain" section**, enter your domain (e.g., `dategenie.app`)
4. **Check "Enforce HTTPS"** (this will be available after DNS is configured)
5. **Click Save**

### Step 2: Configure DNS at GoDaddy

#### Option A: Using Apex Domain (dategenie.app)
If your domain is `dategenie.app` (without www), add these DNS records:

**A Records:**
```
Type: A
Name: @
Value: 185.199.108.153
TTL: 600

Type: A  
Name: @
Value: 185.199.109.153
TTL: 600

Type: A
Name: @
Value: 185.199.110.153
TTL: 600

Type: A
Name: @
Value: 185.199.111.153
TTL: 600
```

#### Option B: Using Subdomain (www.dategenie.app)
If you want to use `www.dategenie.app`, add these records:

**A Records:**
```
Type: A
Name: @
Value: 185.199.108.153
TTL: 600

Type: A  
Name: @
Value: 185.199.109.153
TTL: 600

Type: A
Name: @
Value: 185.199.110.153
TTL: 600

Type: A
Name: @
Value: 185.199.111.153
TTL: 600
```

**CNAME Record:**
```
Type: CNAME
Name: www
Value: [YOUR_USERNAME].github.io
TTL: 600
```

### Step 3: GoDaddy DNS Configuration Steps

1. **Log into GoDaddy**
2. **Go to "My Products"** → Find your domain → **"DNS"**
3. **Delete existing A records** (if any)
4. **Add the new A records** listed above
5. **If using www subdomain**, add the CNAME record
6. **Save changes**

### Step 4: Wait for DNS Propagation

- **DNS changes can take 24-48 hours** to fully propagate
- **Usually works within 1-2 hours**
- **Check status** at: https://www.whatsmydns.net/

### Step 5: Verify Setup

1. **Check GitHub Pages status** in repository settings
2. **Look for green checkmark** next to your custom domain
3. **Test your website** at your custom domain
4. **Enable HTTPS** once DNS is working

### Step 6: Update Website Files

After your domain is working, update these files with your actual domain:

1. **sitemap.xml** - Replace all URLs
2. **robots.txt** - Update Host line
3. **index.html** - Update canonical URLs and meta tags
4. **All HTML files** - Update any hardcoded URLs

## 🔧 Troubleshooting

### Common Issues:

**"Domain not verified" error:**
- Wait longer for DNS propagation
- Check DNS records are correct
- Ensure no typos in domain name

**HTTPS not working:**
- Wait for DNS to fully propagate
- Check "Enforce HTTPS" is enabled
- May take up to 24 hours after DNS is working

**Website not loading:**
- Verify DNS records are correct
- Check domain spelling in GitHub settings
- Clear browser cache

### DNS Check Commands:
```bash
# Check A records
nslookup dategenie.app

# Check CNAME (if using www)
nslookup www.dategenie.app
```

## 📱 Final Steps

1. **Update all website files** with your custom domain
2. **Test all pages** work correctly
3. **Submit sitemap** to Google Search Console
4. **Set up Google Analytics** (optional)
5. **Monitor website performance**

## 🎉 You're Done!

Your DateGenie website will be live at your custom domain with:
- ✅ Professional custom domain
- ✅ Free GitHub Pages hosting
- ✅ Automatic HTTPS
- ✅ Fast global CDN
- ✅ Automatic deployments

---

**Need help?** Check GitHub Pages documentation or GoDaddy support.
