'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/NOTICES": "1707702ba414d2904af8d15ff788eb45",
"assets/AssetManifest.bin.json": "eba434c74ca66d082f040ecfe486b7e9",
"assets/FontManifest.json": "3e85e02323b12977736949d0073ccdbe",
"assets/assets/fonts/NanumMyeongjo-Bold.ttf": "5ea37dfbbfbd9fb13421ffc6032f150a",
"assets/assets/fonts/NanumMyeongjo-Regular.ttf": "efdc1f63c31b3c0acc07777c2c2d8b38",
"assets/assets/fonts/NanumMyeongjo-ExtraBold.ttf": "bf37d995db642e86d6d45f2388e00a9b",
"assets/assets/images/asset_02_1.jpeg": "892ddb83fc9530ac1184659ffe21c19f",
"assets/assets/images/grid_asset_11.jpeg": "325e50d5ce1c91c3bea55ff9c8a351f2",
"assets/assets/images/asset_01.jpg": "850af1d2ca360cec365581df47284dab",
"assets/assets/images/paper_background.jpg": "421e3e8887e38459343d434a208e391e",
"assets/assets/images/grid_asset_12.jpeg": "f3b2f8e050e4f2bb5787997225dbf1d9",
"assets/assets/images/grid_asset_4.jpeg": "272942ae08d80355faede0876926d834",
"assets/assets/images/grid_asset_3.jpeg": "a4142eb1089979c1882cc3295fcd1f05",
"assets/assets/images/grid_asset_9.jpeg": "394ed73ad6a2d34b48fad04745741118",
"assets/assets/images/grid_asset_2.jpeg": "eaaf4639a4519da7cac5cd85465c65f6",
"assets/assets/images/asset_02.jpg": "74c55d3684a78d8ba3940e10d7afd2ad",
"assets/assets/images/asset_03.png": "14ca4c75058fb3468bdd7beebd62d9bb",
"assets/assets/images/grid_asset_10.jpeg": "d2bc324a1192b9ca8a75d1c81e62e056",
"assets/assets/images/grid_asset_5.jpeg": "c7364535203e02e3b2b3168326a5adce",
"assets/assets/images/grid_asset_15.jpeg": "f2150ac307f5575004788cb24cbe6e77",
"assets/assets/images/grid_asset_13.jpeg": "c148b3f01eb20701d31a44393d67b155",
"assets/assets/images/paper_background_2.jpg": "8faa39589184982fd95fcb2d0887ef06",
"assets/assets/images/asset_02_2.jpeg": "e6fea2ff6d9f0dcfe814d6bfe52e5c97",
"assets/assets/images/grid_asset_14.jpeg": "d2276955d01b03ee204e6a016729f4d5",
"assets/assets/images/grid_asset_7.jpeg": "049c70252f530468bcb9ca07e58b3ed9",
"assets/assets/images/asset_01_1.jpeg": "36c4def296c75ae50791fb02506f3ca0",
"assets/assets/images/grid_asset_8.jpeg": "26cfb05cc395c7e05552e225d5a95f95",
"assets/assets/images/grid_asset_1.jpeg": "41ac41b97dd825b4f260082d89f5870a",
"assets/assets/images/grid_asset_6.jpeg": "279ee0effd417e8d00ca723b8f2cb18f",
"assets/assets/icons/icon_1.png": "957f222e76c73374e531ae14bfa5576c",
"assets/fonts/MaterialIcons-Regular.otf": "9b07b90771c97b4656b168f3e8fabe86",
"assets/AssetManifest.json": "ef71754b5900159e853d88f22cf2c1e8",
"assets/AssetManifest.bin": "5cf86f86dc72b775b34ea2e3a7ef95ca",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "d223c435dc734f559a0d73398c78a825",
"favicon.ico": "97992bd4550df80e432b517eacc8b86e",
"index.html": "c0d30aaf1ea350f622baec08d25e0c20",
"/": "c0d30aaf1ea350f622baec08d25e0c20",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"flutter_bootstrap.js": "c9a915932daed410f0976d04ba9f4c74",
"main.dart.js": "4cdb0e9c9a21dd71be915d7f6753cd9a",
"style.css": "9d4dc81987269f552d7c0fddb886658b",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "9ef17e6bb2a4a4eddc4e2e121203aaad",
"version.json": "3d0a8b3e454aa8006e8b32fefcd8e5e3"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
