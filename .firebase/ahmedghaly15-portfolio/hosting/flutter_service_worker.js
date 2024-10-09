'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "89ca9bac77d8780910c86ce4a56c8d91",
"assets/AssetManifest.bin.json": "3a4ac347760fd877ce4180100f3bbe22",
"assets/AssetManifest.json": "7d9e73bf236a521ddfe0d005a756d29e",
"assets/assets/app_icon.png": "e42378df94d815adbe1bc37f2afd5bf8",
"assets/assets/cv/Ahmed-Ghaly.pdf": "a8e2a23acc3154ee0052f1bb52b4bdca",
"assets/assets/fonts/Nunito/Nunito-Bold.ttf": "ba43cdecf9625c0dcec567ba29555e15",
"assets/assets/fonts/Nunito/Nunito-Medium.ttf": "d26cecc95cdc8327b337357e6c5c1f5b",
"assets/assets/fonts/Nunito/Nunito-Regular.ttf": "b83ce9c59c73ade26bb7871143fd76bb",
"assets/assets/fonts/Nunito/Nunito-SemiBold.ttf": "38257ec36f55676f98fcdf1264adb69d",
"assets/assets/fonts/Playfair_Display/PlayfairDisplay-Bold.ttf": "9b38798112efb7cf6eca1de031cec4ca",
"assets/assets/fonts/Playfair_Display/PlayfairDisplay-Medium.ttf": "42e5edcf78a90b7358c0b95bfc55ce35",
"assets/assets/fonts/Playfair_Display/PlayfairDisplay-Regular.ttf": "1a28efdbd2876d90e554a67faabad24b",
"assets/assets/fonts/Playfair_Display/PlayfairDisplay-SemiBold.ttf": "54a87ef71bd558e23e1bdc47b4496bc1",
"assets/assets/fonts/Raleway/Raleway-Bold.ttf": "9aefa157ae4a8f7ff923dd88cee3917f",
"assets/assets/fonts/Raleway/Raleway-Medium.ttf": "28ea37f0eb58c57e01eed0b06fc359d6",
"assets/assets/fonts/Raleway/Raleway-Regular.ttf": "6310192cd2011f527e18b1586a1245c8",
"assets/assets/fonts/Raleway/Raleway-SemiBold.ttf": "66c9748f1e4aae2e764d5c50c05f7841",
"assets/assets/images/black_me.jpg": "9afd96050e14b18a37900f67cf79465c",
"assets/assets/images/icare_icon.png": "092c8506f9eb8264ac84e76e4bd66b0a",
"assets/assets/images/linkup_icon.png": "6910fba2bc33a3a89133ae5e372020f5",
"assets/assets/images/roome_icon.png": "5e16d4a79c091736057d05cfc8e5731b",
"assets/assets/images/storeify_icon.png": "edaa783ddeb33ed858ec35661addcdb0",
"assets/assets/svgs/dark_mode_icon.svg": "3c54ae24f7c4879b76170fcf1f6e04ea",
"assets/assets/svgs/email_icon.svg": "f16502f13aebccc79227163eb1957dc1",
"assets/assets/svgs/email__dark_mode_icon.svg": "2f0c4b95602421fc69bac208f48fc748",
"assets/assets/svgs/facebook-icon.svg": "6260bd72d580d535209b10bdbfaeebe1",
"assets/assets/svgs/github_dark_mode_icon.svg": "c61d556f8451ac086eb285bf4064d0a1",
"assets/assets/svgs/github_icon.svg": "82299667322fce90a9db98edcc751239",
"assets/assets/svgs/hovered-facebook-icon.svg": "aa065819b6d28add98a8c8b99b6a505a",
"assets/assets/svgs/hovered-instagram-icon.svg": "488579bc77719ed5fdc12c70d63b599e",
"assets/assets/svgs/hovered-x-icon.svg": "674a6b2b15188117857c6e7b8bfafe49",
"assets/assets/svgs/instagram-icon.svg": "e683d337016b71c65624489b653fe435",
"assets/assets/svgs/lavender-bg.svg": "74c992719723134cc240ac598b41ad70",
"assets/assets/svgs/light_mode_icon.svg": "2989a7e4048ef1ecc60b0e0bc6cbf518",
"assets/assets/svgs/linkedin_dark_mode_icon.svg": "c717f950cfb098d140de95b2be43f516",
"assets/assets/svgs/linkedin_icon.svg": "de504893956caf97719f9fe2dcbf1a07",
"assets/assets/svgs/locale_icon.svg": "5be876430e798907bc4d11a072162f37",
"assets/assets/svgs/medium_dark_mode_icon.svg": "1546e9ea1f7349a37be0a65aadf7331e",
"assets/assets/svgs/medium_icon.svg": "c0b774d4f57507cb968b90711c45531d",
"assets/assets/svgs/mobile-lavender-bg.svg": "c756ac04b2f5357378c949b934af5d26",
"assets/assets/svgs/tablet-lavender-bg.svg": "d6d6b5df677d03bd11141f5803ec72e8",
"assets/assets/svgs/x-icon.svg": "352e9285312089563cb9edd6f52e46d5",
"assets/FontManifest.json": "f77cebc707fd8e42125145b4fa4c5525",
"assets/fonts/MaterialIcons-Regular.otf": "9fc363f1cfdb0d5bfd2a50c783c73348",
"assets/lib/src/core/locale/lang/ar.json": "3057cb35da779aa6afd0cb483346ec37",
"assets/lib/src/core/locale/lang/en.json": "8721ba979b16eb44b05cea9b55525a46",
"assets/NOTICES": "e93d886377fdfdb5e67521c8810686b1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "697fcad796461f6b698c1e42cfe05cc1",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "937aa33ef609a38b3a6cdad5da169084",
"icons/app-icon-192.png": "d71ec67c1b137b8b2758c1afac35125e",
"icons/app-icon-512.png": "90190a396a661497b02d8421fa77d14b",
"index.html": "2c0defc2575a9261895c74a797f2c50a",
"/": "2c0defc2575a9261895c74a797f2c50a",
"main.dart.js": "f178cc1af327338e5073ca46cad042f8",
"manifest.json": "34daa7ec4e867e520792cce57624c3e5",
"version.json": "1957ad375567240b3dc9cb935cf32b46"};
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
