# 🔥 Firebase Setup for Real-Time Sync

## Quick Setup Steps:

### 1. Create Firebase Project
1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Create a project"
3. Name it: `wedding-planning-sync`
4. Enable Google Analytics (optional)

### 2. Enable Firestore Database
1. In your Firebase project, go to "Firestore Database"
2. Click "Create database"
3. Choose "Start in test mode" (for now)
4. Select a location (closest to you)

### 3. Get Your Config
1. Go to Project Settings (gear icon)
2. Scroll down to "Your apps"
3. Click "Add app" → Web app (</>) icon
4. Register app name: `wedding-planning`
5. Copy the config object

### 4. Update Your Code
Replace the Firebase config in `index.html` with your real config:

```javascript
const firebaseConfig = {
    apiKey: "your-actual-api-key",
    authDomain: "your-project.firebaseapp.com",
    projectId: "your-project-id",
    storageBucket: "your-project.appspot.com",
    messagingSenderId: "123456789",
    appId: "your-app-id"
};
```

### 5. Set Firestore Rules (Security)
In Firestore → Rules, replace with:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if true; // For now - allows anyone to read/write
    }
  }
}
```

## 🎯 How It Works:
- When you check off a task → Syncs to Firebase instantly
- When your partner checks off a task → Appears on your device instantly
- Real-time collaboration for wedding planning!

## 🔒 Security Note:
The current rules allow anyone to read/write. For production, you'd want to add authentication and proper security rules.

## 🚀 Deploy:
After updating the config, run `./deploy.sh` to deploy with real-time sync!
