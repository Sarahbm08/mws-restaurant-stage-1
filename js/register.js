// Register our service worker
if ('serviceWorker' in navigator) {
	navigator.serviceWorker
		.register('/sw.js')
		.then(function(reg) {
			console.log('Registration successful!');
		})
		.catch(function(error) {
			console.log('Registration failed: ' + error);
		});
}
else {
	console.log("Service workers not supported!");
}