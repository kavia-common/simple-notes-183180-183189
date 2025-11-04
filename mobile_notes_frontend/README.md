# Simple Notes (Flutter)

A simple notes application with local persistence:
- SQLite on mobile/desktop with `sqflite`
- Web support using `sqflite_common_ffi_web` (IndexedDB backend)

Features:
- List notes with empty state
- Create, edit, and delete notes
- Swipe-to-delete on list
- Light theme per style guide (primary #3b82f6, success #06b6d4, text #111827, background #f9fafb, surface #ffffff)

## Run

- Mobile/desktop
  - flutter pub get
  - flutter run

- Web (port 3000 preview)
  - flutter pub get
  - flutter run -d web-server --web-port 3000 --web-hostname 0.0.0.0

Notes:
- No external services or env vars required.
- Data persists locally (device file/IndexedDB). Clearing browser storage resets notes.
