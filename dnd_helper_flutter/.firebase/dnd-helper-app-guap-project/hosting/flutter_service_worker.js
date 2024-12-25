'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c53c81bd478c1c58b620a8fcebcaf2d1",
"assets/AssetManifest.bin.json": "bd5798a02f4614eb7aac4c1f8903fe08",
"assets/AssetManifest.json": "afa3839b35d9d402a0aab44e10086f38",
"assets/assets/icons/2x/rest_2x.png": "dd86c2bb3aedf9134fb13e6f35466341",
"assets/assets/icons/3x/rest_3x.png": "6fcb5d6810a4cd6ec2b464c17634a297",
"assets/assets/icons/checkbox_96.png": "a79882a331fde83e72985507cf447532",
"assets/assets/icons/class_icons/barbarian.png": "4804384a25b94d981264edbc80b8db8d",
"assets/assets/icons/class_icons/bard.png": "074a33c6ac798e7df47aa3fa993ec10c",
"assets/assets/icons/class_icons/cleric.png": "4cd8bbf9e51ad108ea205c895d6a3d35",
"assets/assets/icons/class_icons/druid.png": "71feba4a3335d125bcef0e3f87ca9ff3",
"assets/assets/icons/class_icons/fighter.png": "952777f96b4a55e944c8ea4fd6817551",
"assets/assets/icons/class_icons/monk.png": "5509cda7f61dd31fbf292217e6ca7bdd",
"assets/assets/icons/class_icons/paladin.png": "35b9ad47338ea8de0cf74c1230e7a4d8",
"assets/assets/icons/class_icons/ranger.png": "ed2c3d66ee4b97f4af52903869209f4c",
"assets/assets/icons/class_icons/rogue.png": "788e7f5c10df61918324ca5eebcaee08",
"assets/assets/icons/class_icons/sorcerer.png": "4f2b9831814a8501d6d24bb85503d0a7",
"assets/assets/icons/class_icons/warlock.png": "4e0bad173663f5b7c6f3f408d5903434",
"assets/assets/icons/class_icons/wizard.png": "c67272cf3730632a34690083310f124f",
"assets/assets/icons/fight.png": "b002e700ac82552d8a9a6560bf5d2c85",
"assets/assets/icons/inventory.png": "4d5de03fc38db45d6a715f59d8b5ccdd",
"assets/assets/icons/personal.png": "85b2c36592e9eaabb5d8596847d5a263",
"assets/assets/icons/rest.png": "9c6b9bed56fa6778b5c72fe6bd7ffce2",
"assets/assets/icons/rest_96.png": "6fcb5d6810a4cd6ec2b464c17634a297",
"assets/assets/icons/rest_var2.png": "7d005948128e7e84921c0939d81716d0",
"assets/assets/icons/rest_white.png": "cabb5bd0e5a52e2e1a4098ec26a78c93",
"assets/assets/icons/spells.png": "4002008fa81d87bba86a9e28da6c07c7",
"assets/assets/icons/star_in_checkbox_96.png": "8b9e374003f6f9a93f3ff1a8354134a0",
"assets/assets/jsons/arms.json": "3fcd56333842f05c75bd892ba705a2d2",
"assets/assets/jsons/backgrounds.json": "c2081a1b60d22c6a1f070d555ed21faf",
"assets/assets/jsons/classes.json": "79a1284bb66096312cae07b6078b6e14",
"assets/assets/jsons/races.json": "a424e5b6dd75aabbce125a0cb1af1f3f",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "b2ed7241db16b41da24fcb340940bb76",
"assets/NOTICES": "5e3b7fb278e3e9b1139fecdc5b4dc5fc",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "4e5d1b78196d030a283a4cdabad12733",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9615c3526e149fe5d4a6a7f4338af086",
"/": "9615c3526e149fe5d4a6a7f4338af086",
"main.dart.js": "1a90b859a2af2a886f266b052f5d5a5b",
"manifest.json": "d7c40a0f7db826fe781e0130700a9370",
"version.json": "3ed4fefc4523deee5dbc22df72163a4c"};
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
