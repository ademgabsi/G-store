
# G-Store (G-Store Flutter)

Simple cross-platform Flutter app that simulates a films & series store (G-Store) with static data.

**Overview**
- **Purpose**: Demo application showcasing a small e-commerce-like UI for films/series with favorites and a cart.
- **State management**: `provider` (ChangeNotifier).
- **Platforms**: Linux desktop, Android, iOS, Web (if Chrome installed).

**Features**
- **Home grid**: Browse media tiles (films & series).
- **Details**: View long descriptions, add to favorites and cart.
- **Favorites**: Manage favorite items.
- **Cart**: Add/remove items and view totals.
- **Auth screens**: Splash, Login, SignUp, Reset (simulated flows).

**Quick Start**

Prerequisites:
- Flutter SDK (stable). See https://docs.flutter.dev/get-started/install
- For Linux desktop: `clang`, `libgtk-3-dev` (installed on the dev machine)
- For Android: Android SDK + `cmdline-tools` and accepted licenses
- Optional for web: Google Chrome (or set `CHROME_EXECUTABLE`)

Clone and install dependencies:
```bash
git clone https://github.com/ademgabsi/G-store.git
cd G-store/store
flutter pub get
```

Run the app (Linux desktop):
```bash
flutter run -d linux
```

Run on Android (device/emulator):
```bash
flutter run -d <device-id>
```

Run tests and static analysis:
```bash
flutter analyze
flutter test
```

**Project Structure (important files)**
- `lib/main.dart`: App entry point and Provider setup.
- `lib/models/media.dart`: `Media` model and static dataset.
- `lib/providers/store_provider.dart`: Favorites and cart state (ChangeNotifier).
- `lib/screens/`: App screens (splash, auth, home, details, favorites, cart, profile).
- `lib/widgets/`: Reusable UI widgets (media card, cart item).
- `lib/utils/theme.dart`: App theme configuration.
- `test/widget_test.dart`: Unit tests (StoreProvider).

**Notes & Troubleshooting**
- If tests fail due to SDK issues, try cleaning and reprecaching Flutter:
```bash
flutter clean
rm -rf $(flutter sdk-path)/bin/cache
flutter precache
```
- To fix Android toolchain issues, install Android `cmdline-tools` and run:
```bash
flutter doctor --android-licenses
```

**Contributing**
- Contributions welcome. Open an issue or a PR with a clear change description.

**License**
- No license specified. Add a license file if you plan to publish.

---
Updated: December 2025 — generated after a repository review and environment checks.
