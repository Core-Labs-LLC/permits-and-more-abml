# Troubleshooting Guide

## Common Errors and Solutions

### 1. Vercel Deployment Errors

#### Error: "Build Failed" or "No Build Output"
**Solution:**
- For static HTML sites, Vercel should auto-detect
- Make sure `index.html` is in the root directory
- Try removing `vercel.json` temporarily to let Vercel auto-detect
- Or use the simplified `vercel.json` we've provided

#### Error: "Module not found" or "Cannot find module"
**Solution:**
- This shouldn't happen with static HTML
- Make sure you're deploying a static site, not a Node.js app
- Check that `package.json` doesn't have build dependencies

#### Error: "404 Not Found" after deployment
**Solution:**
- Make sure `index.html` is named correctly (lowercase)
- Check that the file is in the root directory
- Verify the `vercel.json` configuration

---

### 2. GitHub Push Errors

#### Error: "Repository not found"
**Solution:**
```bash
# Check your remote URL
git remote -v

# Update if wrong
git remote set-url origin https://github.com/YOUR_USERNAME/permits-and-more.git
```

#### Error: "Authentication failed"
**Solution:**
- Use a Personal Access Token instead of password
- Go to GitHub Settings → Developer settings → Personal access tokens
- Create token with `repo` permissions
- Use token as password when pushing

#### Error: "Permission denied"
**Solution:**
```bash
# Make sure you're logged in
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

### 3. Browser/Display Errors

#### Images not loading
**Solution:**
- Check image URLs are accessible
- Verify external URLs (Google Cloud Storage) are public
- Check browser console for CORS errors

#### Styles not loading (Tailwind CSS)
**Solution:**
- Check internet connection (Tailwind loads from CDN)
- Verify CDN URL is correct
- Check browser console for blocked resources

#### JavaScript not working
**Solution:**
- Open browser console (F12) to check for errors
- Make sure scripts are loaded (check Network tab)
- Verify no syntax errors in JavaScript

---

### 4. Local Development Errors

#### Error: "Port already in use"
**Solution:**
```bash
# Use a different port
python -m http.server 8001
# or
npx serve . -p 8001
```

#### Error: "Command not found"
**Solution:**
- Python: Install Python from python.org
- Node.js: Install from nodejs.org
- Or just open `index.html` directly in browser

---

### 5. Mobile Menu Not Working

**Solution:**
- Check browser console for JavaScript errors
- Make sure Font Awesome is loading
- Verify mobile menu button has correct ID: `mobile-menu-btn`

---

### 6. Smooth Scroll Not Working

**Solution:**
- Check that anchor links use `href="#section-id"`
- Verify sections have matching IDs
- Check browser console for JavaScript errors

---

## Quick Fixes

### Reset Everything
```bash
# Remove git (if needed)
rm -rf .git

# Reinitialize
git init
git add .
git commit -m "Fresh start"
```

### Test Locally First
```bash
# Always test locally before deploying
python -m http.server 8000
# Open http://localhost:8000
```

### Check File Structure
```
Permits & More/
├── index.html       ← Must be in root
├── vercel.json      ← Optional
├── package.json     ← Optional
├── .gitignore       ← Optional
└── README.md        ← Optional
```

---

## Still Having Issues?

1. **Check Vercel Logs:**
   - Go to Vercel Dashboard → Your Project → Deployments
   - Click on failed deployment → View Logs

2. **Check Browser Console:**
   - Press F12 → Console tab
   - Look for red error messages

3. **Validate HTML:**
   - Use https://validator.w3.org/
   - Fix any HTML errors

4. **Test in Different Browser:**
   - Sometimes browser-specific issues occur

---

## Common File Issues

### Wrong File Encoding
- Make sure files are saved as UTF-8
- Check in your editor settings

### Line Endings (Windows/Mac/Linux)
- Git should handle this automatically
- If issues occur: `git config core.autocrlf true`

### File Permissions
- Make sure files are readable
- Check file permissions if on Linux/Mac

---

## Need More Help?

1. Check Vercel documentation: https://vercel.com/docs
2. Check GitHub documentation: https://docs.github.com
3. Review error messages carefully - they usually tell you what's wrong

