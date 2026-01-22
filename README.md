# Permits & More - Professional Website

A modern, responsive website for Permits & More - Expert Permit Processing & Inspection Services.

## Features

- ✅ Fully responsive design (mobile, tablet, desktop)
- ✅ Modern UI inspired by McCarthy.com design patterns
- ✅ Smooth scrolling navigation
- ✅ Hero image slider
- ✅ Mobile-friendly navigation menu
- ✅ Contact form
- ✅ SEO optimized
- ✅ Fast loading with optimized assets
- ✅ Vercel deployment ready

## Tech Stack

- **HTML5** - Semantic markup
- **Tailwind CSS** - Utility-first CSS framework (via CDN)
- **Font Awesome** - Icon library
- **Vanilla JavaScript** - No framework dependencies
- **Google Fonts** - Inter & Playfair Display

## Deployment to Vercel

### Option 1: Deploy via Vercel CLI

1. Install Vercel CLI globally:
   ```bash
   npm install -g vercel
   ```

2. Navigate to project directory:
   ```bash
   cd "Permits & More"
   ```

3. Deploy:
   ```bash
   vercel
   ```

4. Follow the prompts to complete deployment

### Option 2: Deploy via GitHub

1. Create a GitHub repository
2. Push your code to GitHub
3. Go to [vercel.com](https://vercel.com)
4. Click "New Project"
5. Import your GitHub repository
6. Vercel will auto-detect settings and deploy

### Option 3: Deploy via Vercel Dashboard

1. Go to [vercel.com](https://vercel.com)
2. Click "New Project"
3. Drag and drop your project folder or connect via Git
4. Vercel will automatically configure and deploy

## Project Structure

```
Permits & More/
├── index.html          # Main HTML file
├── package.json        # Project metadata
├── vercel.json         # Vercel configuration
└── README.md          # This file
```

## Local Development

To run locally:

```bash
# Using Python (if installed)
python -m http.server 8000

# Using Node.js serve
npx serve .

# Using PHP (if installed)
php -S localhost:8000
```

Then open `http://localhost:8000` in your browser.

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- Optimized images with lazy loading
- Preconnect to external resources
- Minimal JavaScript footprint
- CDN-hosted assets for fast delivery

## Customization

### Colors

Edit the Tailwind config in `index.html`:

```javascript
tailwind.config = {
  theme: {
    extend: {
      colors: {
        primary: '#1e3a8a',    // Main brand color
        secondary: '#3b82f6',  // Accent color
        accent: '#60a5fa',     // Hover color
      }
    }
  }
}
```

### Content

All content is in `index.html`. Simply edit the HTML to update text, images, or sections.

## Contact Information

- **Phone:** 619-323-4048
- **Email:** info@permitsandmore.com
- **Address:** 101 West Broadway, Suite 300, San Diego CA 92101

## License

© 2025 Permits & More. All rights reserved.

