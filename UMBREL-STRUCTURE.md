# Umbrel Custom App Store Structure

Your repository needs to be structured as an **app store** containing your app.

## Correct Repository Structure

```
axebch-ath-watcher-store/          ← Your GitHub repo
├── axebch-ath-watcher/            ← Your app folder
│   ├── umbrel-app.yml
│   ├── docker-compose.yml
│   ├── backend.py
│   ├── watcher.py
│   ├── icon.svg
│   └── .umbrelignore
└── (optional: other apps)
```

## Quick Fix

You need to reorganize your repository:

### Option A: Restructure Current Repo

1. Create a subfolder with your app name
2. Move all app files into it
3. The repo root should contain the app folder

### Option B: Use Umbrel App Template

I'll create the correct structure for you in the next response.

## Alternative: Submit to Umbrel Community Store

Instead of your own app store, you can submit to the official community store:
1. Fork: https://github.com/getumbrel/umbrel-community-app-store
2. Add your app to a folder
3. Submit a pull request

Let me know which approach you prefer!
