[1mdiff --git a/js/dbhelper.js b/js/dbhelper.js[m
[1mindex 1e1ed04..5ea0599 100644[m
[1m--- a/js/dbhelper.js[m
[1m+++ b/js/dbhelper.js[m
[36m@@ -8,7 +8,7 @@[m [mclass DBHelper {[m
    * Change this to restaurants.json file location on your server.[m
    */[m
   static get DATABASE_URL() {[m
[31m-    const port = 8000 // Change this to your server port[m
[32m+[m[32m    const port = 8887 // Change this to your server port[m[41m[m
     return `http://localhost:${port}/data/restaurants.json`;[m
   }[m
 [m
[1mdiff --git a/js/restaurant_info.js b/js/restaurant_info.js[m
[1mindex cccf63b..504291b 100644[m
[1m--- a/js/restaurant_info.js[m
[1m+++ b/js/restaurant_info.js[m
[36m@@ -22,7 +22,7 @@[m [minitMap = () => {[m
         scrollWheelZoom: false[m
       });[m
       L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.jpg70?access_token={mapboxToken}', {[m
[31m-        mapboxToken: '<your MAPBOX API KEY HERE>',[m
[32m+[m[32m        mapboxToken: 'pk.eyJ1Ijoic2FyYWhibTA4IiwiYSI6ImNqbGUwamVnNTAxZW0zcXFoOGNtM3JraG0ifQ.WXcwq6I0jy-dXYXfutEufQ',[m
         maxZoom: 18,[m
         attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +[m
           '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +[m
