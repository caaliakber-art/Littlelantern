#!/bin/sh
# Builds index.html for GitHub Pages from the game source, adding Firebase sync.
SRC=${1:-/home/claude/app/deeniyath-garden.html}
{
printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="theme-color" content="#B9587A">\n'
printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
printf '<script src="https://www.gstatic.com/firebasejs/10.12.2/firebase-app-compat.js"></script>\n<script src="https://www.gstatic.com/firebasejs/10.12.2/firebase-auth-compat.js"></script>\n<script src="https://www.gstatic.com/firebasejs/10.12.2/firebase-firestore-compat.js"></script>\n'
printf '<script>window.LL_FB={apiKey:"AIzaSyAIZ4JyxxZPBcPD5OHjQ-hpofP-KJwHtzE",authDomain:"little-lantern-b8a7b.firebaseapp.com",projectId:"little-lantern-b8a7b",storageBucket:"little-lantern-b8a7b.firebasestorage.app",messagingSenderId:"598122924180",appId:"1:598122924180:web:2bf132131983ea04d74c81"};</script>\n'
printf '</head>\n<body>\n'
cat "$SRC"
printf '\n</body>\n</html>\n'
} > "$(dirname "$0")/index.html"
