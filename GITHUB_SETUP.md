# Step-by-Step: GitHub + Vercel Deployment

## ✅ Recommended Workflow: GitHub First, Then Vercel

This approach gives you automatic deployments and version control.

---

## Step 1: Create GitHub Repository

1. Go to **https://github.com/new**
2. Repository name: `permits-and-more` (or your preferred name)
3. Description: "Permits & More - Professional Permit Processing Website"
4. Choose: **Public** or **Private** (your choice)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click **"Create repository"**

---

## Step 2: Initialize Git and Push to GitHub

Open your terminal/PowerShell in the project folder and run these commands:

```bash
# Navigate to your project (if not already there)
cd "C:\Users\RAIN\Downloads\Permits & More"

# Initialize git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit - Permits & More website with McCarthy.com design"

# Rename branch to main (if needed)
git branch -M main

# Add GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/permits-and-more.git

# Push to GitHub
git push -u origin main
```

**Note:** You'll be prompted to login to GitHub. Use your GitHub username and a Personal Access Token (not password).

---

## Step 3: Deploy to Vercel via GitHub

1. Go to **https://vercel.com**
2. Sign in (or create account) - you can use your GitHub account
3. Click **"New Project"** or **"Add New..."** → **"Project"**
4. Click **"Import Git Repository"**
5. Find and select your `permits-and-more` repository
6. Click **"Import"**
7. Vercel will auto-detect settings:
   - Framework Preset: **Other**
   - Root Directory: **./**
   - Build Command: (leave empty - static site)
   - Output Directory: (leave empty)
8. Click **"Deploy"**
9. Wait 1-2 minutes for deployment
10. ✅ Your site is live! You'll get a URL like: `https://permits-and-more.vercel.app`

---

## Step 4: Automatic Deployments (The Magic!)

Now, whenever you make changes:

1. Edit your files locally
2. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Your change description"
   git push
   ```
3. **Vercel automatically deploys** your changes! 🎉

---

## Quick Reference Commands

```bash
# Make changes, then:
git add .
git commit -m "Description of changes"
git push

# Vercel automatically deploys!
```

---

## Troubleshooting

### If you get "repository not found" error:
- Make sure you've created the GitHub repo first
- Check that the repository URL is correct
- Verify you're logged into GitHub

### If you need to update the remote URL:
```bash
git remote set-url origin https://github.com/YOUR_USERNAME/permits-and-more.git
```

### If you want to check your remote:
```bash
git remote -v
```

---

## Benefits of This Approach

✅ **Automatic deployments** - Every push = new deployment  
✅ **Version control** - Track all changes  
✅ **Easy rollbacks** - Revert to previous versions  
✅ **Collaboration** - Others can contribute  
✅ **History** - See what changed and when  
✅ **Backup** - Your code is safely stored on GitHub  

---

## Alternative: Direct Deploy (No GitHub)

If you prefer to skip GitHub for now:

1. Go to **https://vercel.com**
2. Click **"New Project"**
3. Click **"Browse"** or drag & drop your project folder
4. Click **"Deploy"**

**Note:** With this method, you'll need to manually redeploy when making changes.

