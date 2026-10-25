// Little Lantern service worker: lets phones install the game as an app.
// It deliberately caches nothing, so updates always arrive straight away.
self.addEventListener('install', () => self.skipWaiting());
self.addEventListener('activate', e => e.waitUntil(self.clients.claim()));
self.addEventListener('fetch', () => {});
