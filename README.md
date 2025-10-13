# 💍 Wedding Planning Dashboard

A beautiful, interactive wedding planning task tracker for Val & Dan's June 2026 wedding at Sterling Ridge Resort.

## 🚀 Quick Deploy

After making any changes to your code:

```bash
# Option 1: Use the deploy script (recommended)
./deploy.sh

# Option 2: Manual deployment
git add .
git commit -m "Update dashboard"
vercel --prod
```

## 🌐 Live Site
**https://weddingplan-nine.vercel.app**

## 📱 Features
- ✅ Task management for Val, Dan, and shared tasks
- 📈 Progress tracking with visual bars
- 💾 Local storage (saves your progress)
- 📱 Mobile responsive design
- 🎯 Organized by month (Oct 2025 - May 2026)

## 🛠 Development

### Local Development
```bash
vercel dev
```

### Deployment
```bash
npm run deploy
# or
./deploy.sh
```

## 📁 Project Structure
```
weddingplan/
├── index.html          # Main dashboard
├── vercel.json         # Vercel configuration
├── deploy.sh           # Quick deployment script
├── package.json        # Project metadata
└── README.md          # This file
```

## 🔄 Workflow for Future Apps

1. **Create new project**: `mkdir my-app && cd my-app`
2. **Initialize Vercel**: `vercel login && vercel`
3. **Add deploy script**: Copy `deploy.sh` and `package.json`
4. **Make changes**: Edit your code
5. **Deploy**: `./deploy.sh`

## 🎯 Pro Tips
- Always use the same production URL for sharing
- Changes require git commit + vercel deploy
- Use `vercel dev` for local testing
- Check `vercel ls` to see all deployments
