# Deployment Instructions

## Option 1: Deploy via Vercel CLI

1. Install Vercel CLI (if not already installed):
   ```bash
   npm install -g vercel
   ```

2. Navigate to project directory:
   ```bash
   cd "C:\Users\RAIN\Downloads\Permits & More"
   ```

3. Login to Vercel:
   ```bash
   vercel login
   ```

4. Deploy:
   ```bash
   vercel
   ```

5. Follow the prompts:
   - Set up and deploy? **Yes**
   - Which scope? Choose your account
   - Link to existing project? **No** (for first deployment)
   - Project name? **permits-and-more** (or your preferred name)
   - Directory? **./** (current directory)
   - Override settings? **No**

6. Your site will be deployed and you'll get a URL like: `https://permits-and-more.vercel.app`

## Option 2: Deploy via GitHub

1. Create a GitHub repository:
   - Go to https://github.com/new
   - Name it "permits-and-more"
   - Create the repository

2. Push your code to GitHub:
   ```bash
   git init
   git add .
   git commit -m "Initial commit - Permits & More website"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/permits-and-more.git
   git push -u origin main
   ```

3. Deploy on Vercel:
   - Go to https://vercel.com
   - Click "New Project"
   - Import your GitHub repository
   - Vercel will auto-detect settings
   - Click "Deploy"

## Option 3: Deploy via Vercel Dashboard (Drag & Drop)

1. Go to https://vercel.com
2. Sign in or create account
3. Click "New Project"
4. Drag and drop your project folder
5. Vercel will automatically deploy

## After Deployment

- Your site will be live at: `https://your-project-name.vercel.app`
- Every time you push to GitHub (if using Method 2), Vercel will automatically redeploy
- You can add a custom domain in Vercel dashboard under "Settings" > "Domains"

