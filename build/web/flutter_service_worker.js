'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "efc7e906546d763d3b8b4b4b5eafd13f",
"assets/assets/fonts/AutografPersonalUseOnly-mOBm.ttf": "8e97f88029e50c58d9f0deef4c821a35",
"assets/assets/fonts/Poppins-Medium.otf": "f88c443f02135a3ba091560e76ed767f",
"assets/assets/fonts/Rubik-VariableFont_wght.ttf": "c8041f987a7c34d176ad7014374a29cf",
"assets/assets/fonts/signiture2.ttf": "8e97f88029e50c58d9f0deef4c821a35",
"assets/assets/imgs/51953.png": "89c74086df2e97b1060dd58efba801be",
"assets/assets/imgs/borderdraw.png": "6dc0eac1d364b3b1126342189275b74e",
"assets/assets/imgs/fakebook1.jpg": "677e6b792a42c028d29ecdd4ec229e6a",
"assets/assets/imgs/fakebook2.jpg": "f4de159bae84cf11c84a9f73e191089f",
"assets/assets/imgs/fakebook3.jpg": "0857c6be26f5b558f2499fa95909344d",
"assets/assets/imgs/fakebook4.jpg": "1d2e071ccaf57c9b60cab683a775a991",
"assets/assets/imgs/fakebook5.jpg": "57479ebca0325d13b3f6aa01dfe45c22",
"assets/assets/imgs/fakebook6.jpg": "c80b2aedc0314e5812109480995354fd",
"assets/assets/imgs/fakebook7.jpg": "8790706522b38f0355fa996e3d1c16fc",
"assets/assets/imgs/fakebook8.jpg": "4c869bc89a303e2214a0d95192303fb0",
"assets/assets/imgs/fakebook9.jpg": "75cf2ccfe2d80bf095e2cc4a36bf9246",
"assets/assets/imgs/GitHub-Emblem.pdf": "ee481c23211a8db5438c45c54ce9374a",
"assets/assets/imgs/GitHub-Emblem.png": "baeac0e00de6abc2ba773e9580f2f63e",
"assets/assets/imgs/GitHub-Emblem.svg": "64c3ef625dbd184017dbf46683d180f4",
"assets/assets/imgs/linkedin-logo2.png": "18a8e7fba37c942215ea71ece1e9e717",
"assets/assets/imgs/ML_added.png": "b8a2e0d7e7aeb943e30e295bed58eed2",
"assets/assets/imgs/ML_addmachine.png": "baeb85351eeda8bfefd885b55b44c63e",
"assets/assets/imgs/ML_console.png": "d5e1d70c1ba58522614f50748d86a2e7",
"assets/assets/imgs/ML_login.png": "7772bbb9e715fa323cbed4c2645303dd",
"assets/assets/imgs/ML_reg.png": "061e342767f779bad3d8f2e80725dace",
"assets/assets/imgs/ML_users.png": "1a4fbd5b97049190b1ae6300b56046af",
"assets/assets/imgs/output.png": "cb917afd8b57b335c90c13c2566fc49a",
"assets/assets/imgs/placeholder.jpg": "5a80e93b92da2ea95452b1229deeb4fa",
"assets/assets/imgs/project.png": "e1fdd2a5a887930b10d42b4b4cf618a6",
"assets/assets/imgs/vblk.png": "203586e7f9e8316f25b97a2228cefed1",
"assets/assets/imgs/vwht.png": "6b6cd699cb3bfcfef03eeb65884ddfe9",
"assets/assets/imgs/WebPortfolio.png": "cb2df857f3c564779d6ec75e545ac78f",
"assets/FontManifest.json": "e5aea38dd29a74e11ee6aa73b975731f",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "f066d39cedb8606f2a51b59a87283bdc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "cc12e59d71af9325b7cae5ac8bb49cf6",
"/": "cc12e59d71af9325b7cae5ac8bb49cf6",
"main.dart.js": "210901b04b1f732e6a816f0fb17ce815",
"manifest.json": "7bcb2de2f1be510b578ccf6657b176a3",
"version.json": "8e692e1e6040f0477aceb7d44935dbad"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
