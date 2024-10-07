'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".dart_tool/dartpad/web_plugin_registrant.dart": "7ed35bc85b7658d113371ffc24d07117",
".dart_tool/package_config.json": "c3c089de64da3f6aa8ad76a8e52d517d",
".dart_tool/package_config_subset": "b63b186dfb7d30cd0d116ab9ecbee560",
".dart_tool/version": "eb551f178a7722de461ad54179631ea2",
".idea/libraries/Dart_SDK.xml": "b1c063a4e609ba87bc7c7200be8b0e78",
".idea/libraries/KotlinJavaRuntime.xml": "de38cfadca3106f8aff5ab15dd81692f",
".idea/modules.xml": "54d20fbf58fb2a138f069f2e3cd517bd",
".idea/runConfigurations/main_dart.xml": "0ecf958af289efc3fc1927aa27a8442f",
".idea/workspace.xml": "25155dfb2368a7e35e1ebbecd505a418",
"ahmedghaly15_portfolio.iml": "f9bf5c490675c84d098e6772a6f2a796",
"analysis_options.yaml": "9e65f4b9beebb674c0dc252f70a5c177",
"assets/AssetManifest.bin": "0ec924449790c3455bb74d914aa3a18a",
"assets/AssetManifest.bin.json": "cd6dbeb1a8a1eb4ff69b283925aa6547",
"assets/AssetManifest.json": "65de5e9671be0e2fcc4f1a8465e86b4b",
"assets/assets/cv/Ahmed%2520Ghaly.pdf": "a8e2a23acc3154ee0052f1bb52b4bdca",
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
"assets/assets/svgs/github_dark_mode_icon.svg": "c61d556f8451ac086eb285bf4064d0a1",
"assets/assets/svgs/github_icon.svg": "82299667322fce90a9db98edcc751239",
"assets/assets/svgs/lavender-bg.svg": "74c992719723134cc240ac598b41ad70",
"assets/assets/svgs/light_mode_icon.svg": "2989a7e4048ef1ecc60b0e0bc6cbf518",
"assets/assets/svgs/linkedin_dark_mode_icon.svg": "c717f950cfb098d140de95b2be43f516",
"assets/assets/svgs/linkedin_icon.svg": "de504893956caf97719f9fe2dcbf1a07",
"assets/assets/svgs/locale_icon.svg": "5be876430e798907bc4d11a072162f37",
"assets/assets/svgs/medium_dark_mode_icon.svg": "1546e9ea1f7349a37be0a65aadf7331e",
"assets/assets/svgs/medium_icon.svg": "c0b774d4f57507cb968b90711c45531d",
"assets/FontManifest.json": "48693f390af13f8b08c1e239fbabc73f",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/lib/src/core/locale/lang/ar.json": "3057cb35da779aa6afd0cb483346ec37",
"assets/lib/src/core/locale/lang/en.json": "8721ba979b16eb44b05cea9b55525a46",
"assets/NOTICES": "000f057876bc3e9e02ab137fa9de2151",
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
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "13a4137f13d49c556ae4370950271d1f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9c1de2d8a022729fd702b50f689ce7e1",
"/": "9c1de2d8a022729fd702b50f689ce7e1",
"lib/main.dart": "d8621d84413b0f1b1eeb5df51af935a1",
"main.dart.js": "d5b2fd732141437fa71533a0e2f303e0",
"manifest.json": "9cc5002128a3005bf4b0f4c1afba1651",
"pubspec.lock": "2dde85ed268a6296ce387d86ee7e7a33",
"pubspec.yaml": "eca4cd868490b4833b087ba632764f53",
"README.md": "310335dc30f4695791b3364857232ec7",
"test/widget_test.dart": "4c43ce046a237be8d297c9dda48cc76b",
"version.json": "9a4f558592eaaa378a22e1076843b354",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/index.html": "adecd794e756f2864bd16e7a4d8bf46e",
"web/manifest.json": "0f9e35e1a4b47ad8b5b8cb9e71242ce8"};
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
