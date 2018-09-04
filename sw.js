let cacheID = 'mws-restaurant-v1';

self.addEventListener('install', function(event) {

	event.waitUntil(
		caches.open(cacheID).then(function(cache) {
			return cache.addAll([
				'/',
				'/index.html',
				'/restaurant.html',        
				'css/styles.css',
				'js/main.js',
				'js/restaurant_info.js',
				'js/dbhelper.js',
				'js/register.js',
				'data/restaurants.json'
			])
			.catch(error => {
				console.log('Caches open failed: ' + error);
			});
		})
	);
});

self.addEventListener('activate', function(event) {
	event.waitUntil(
		caches.keys().then(function(cacheNames) {
			return Promise.all(
				cacheNames.filter(function(cacheName) {
					return cacheName.startsWith('mws-restaurant-v') &&
						cacheName != cacheID;
				}).map(function(cacheName) {
					return caches.delete(cacheName);
				})
			);
		})
	);
});

self.addEventListener('fetch', function(event) {
	console.log('fetching ' + event.request.url);
	event.respondWith(
		caches.match(event.request).then(function(response) {
			console.log('match! event.request.url: ' + event.request.url);
			return response || fetch(event.request);
		})
	);
});