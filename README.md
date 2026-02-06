# Personal Portfolio - Jaspr Web

This repository is now configured as a **Jaspr-first web deployment**.

## Architecture

- **Runtime/UI framework:** `jaspr`
- **Data/API client:** `supabase`
- **Build pipeline:** `jaspr_builder`
- **Hosting target:** Firebase Hosting static site
- **Static assets source:** `web/`
- **Generated deployment output:** `build/jaspr/`

`jaspr_builder` compiles the app and places deployable files in `build/jaspr`. Web assets from `web/` (such as `index.html`, icons, and manifest files) are expected to be integrated into that output during build.

## Migration decisions

- Removed Flutter-only deployment scaffolding for platform builds (`android/`, `ios/`, `macos/`) because this repo is now targeting web-only Jaspr deployment.
- Kept only shared Dart packages required by the current app/deployment flow.

## Local development

Install dependencies:

```bash
dart pub get
```

Run local Jaspr dev server:

```bash
./scripts/jaspr_dev.sh
```

## Production build

Build static output:

```bash
./scripts/jaspr_build.sh
```

Output directory:

```text
build/jaspr/
```

## Hosting flow (Firebase)

1. Build site with `jaspr_builder`.
2. Firebase Hosting serves `build/jaspr/` (configured in `firebase.json`).
3. Deploy with Firebase CLI or CI workflow (`.github/workflows/deploy.yml`).

Example deploy command:

```bash
firebase deploy --only hosting
```
