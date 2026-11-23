# Assistant

A personal assistant app for a single user: Chat, Tasks and Files in one dark,
Material 3 Flutter app. Version 1 is a polished UI prototype that runs entirely
on local mock data: no backend, no authentication, no network calls, no real AI.
The mock repositories sit behind the same interfaces a real data source would
implement later, so the UI never changes when one arrives.

Working name: **Assistant** (placeholder, will be renamed).

## Tech stack

- Flutter (stable) with Dart 3, null safety everywhere
- `flutter_bloc` for state management (Cubits for simple state, Blocs where events matter)
- `go_router` with `StatefulShellRoute` for the bottom navigation
- `get_it` for dependency injection (one setup file)
- `dartz` `Either` for repository results
- `shared_preferences` for settings only (no database in v1)
- `intl` for date formatting
- Inter via `google_fonts`
- No networking packages

## Architecture

Clean Architecture, feature-first:

```
lib/
  main.dart
  app/         router, shell, DI setup
  core/        theme tokens, shared widgets, mock seed
  features/
    chat/      data, domain, presentation
    tasks/     data, domain, presentation
    files/     data, domain, presentation
    settings/  data, domain, presentation
```

- Each feature's `data` layer holds models, a mock data source and the
  repository implementation; `domain` holds entities, repository contracts and
  use cases; `presentation` holds cubits/blocs, pages and widgets.
- The UI depends on domain contracts only.
- All seed data lives in `core/mock/mock_seed.dart`.

## Build order

- **Phase 1 (this commit):** scaffold, dark theme, router, bottom navigation
  shell with placeholder pages.
- Phase 2: Chat tab, complete.
- Phase 3: Tasks tab, complete.
- Phase 4: Files tab and Settings.
- Phase 5: polish, empty states, loading shimmer, tests.

## Getting started

```bash
flutter pub get
flutter run        # Android or iOS phone
flutter analyze    # expected: no issues
flutter test
```

## Not in v1

A real assistant connection, persistence beyond settings, and a light theme.
The seams (repository contracts, DI setup, single seed file) are kept clean so
these arrive later without refactoring the UI.
