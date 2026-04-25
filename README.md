<div align="center">

# 📱 TabBook Pro

**A professional Flutter tab-navigation showcase app**  
Built with Material 3 · Clean Architecture · Widget Tested

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.6.1-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Material 3](https://img.shields.io/badge/Material-3-757575?logo=materialdesign&logoColor=white)](https://m3.material.io)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.0.0-blue.svg)](#-release-notes)

</div>

---

## 📖 Overview

**TabBook Pro** is a portfolio-grade Flutter mobile application demonstrating professional tab-based navigation architecture. It mirrors the structural pattern found in large-scale social and content apps, making it an ideal showcase for clean code practices, reusable component design, and modern Flutter UI standards.

> Designed to run on **Android** and **iOS** from a single codebase.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🏠 Home Feed | Trending stories and engagement insights |
| 👥 Connections | Friend groups and smart collaboration tools |
| 🎬 Video Studio | Upload queue, caption presets, performance metrics |
| 🔔 Notifications | Priority alerts, focus-mode muting, deep-link cards |
| ⚙️ Workspace Menu | Account settings, drafts, and security center |

---

## 🖼️ Screenshots

> _Screenshots will be added after first device build. Run `flutter run` to preview locally._

| Home | Friends | Videos | Notifications | Menu |
|:---:|:---:|:---:|:---:|:---:|
| _(coming soon)_ | _(coming soon)_ | _(coming soon)_ | _(coming soon)_ | _(coming soon)_ |

---

## 🏗️ Project Structure

```
tabactivityfragment/
├── lib/
│   ├── main.dart                        # App entry point, theme & tab shell
│   ├── screens/
│   │   ├── home_fragment.dart           # Home feed screen
│   │   ├── friends_fragment.dart        # Connections screen
│   │   ├── video_fragment.dart          # Video studio screen
│   │   ├── notification_fragment.dart   # Notifications screen
│   │   └── menu_fragment.dart           # Workspace menu screen
│   └── widgets/
│       └── fragment_page_template.dart  # Reusable screen template component
├── test/
│   └── widget_test.dart                 # Widget tests for navigation & branding
├── android/                             # Android platform project
├── ios/                                 # iOS platform project
├── pubspec.yaml                         # Dependencies & app metadata
└── analysis_options.yaml                # Linter configuration
```

---

## 🛠️ Tech Stack & Dependencies

### Runtime Dependencies

| Package | Version | Purpose |
|---|---|---|
| `flutter` | SDK | Core framework |
| `cupertino_icons` | ^1.0.8 | iOS-style icon set |

### Dev Dependencies

| Package | Version | Purpose |
|---|---|---|
| `flutter_test` | SDK | Widget testing framework |
| `flutter_lints` | ^5.0.0 | Dart/Flutter lint rules |

### Platform Requirements

| Platform | Minimum Version |
|---|---|
| Android | API 21 (Android 5.0) |
| iOS | iOS 12.0 |
| Dart SDK | ^3.6.1 |
| Flutter SDK | ^3.x |

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed → [Install Flutter](https://docs.flutter.dev/get-started/install)
- A connected device or emulator
- Run `flutter doctor` to verify setup

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/asoporitech/TabBook-Pro.git

# 2. Navigate to project root
cd tabactivityfragment

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

### Build for Release

```bash
# Android APK
flutter build apk --release

# Android App Bundle (Play Store)
flutter build appbundle --release

# iOS (requires macOS + Xcode)
flutter build ios --release
```

---

## 🧪 Testing

```bash
# Run all widget tests
flutter test

# Run with verbose output
flutter test --reporter expanded
```

**Test coverage includes:**
- App branding and shell rendering
- Tab label visibility across all 5 tabs
- Navigation between tabs (e.g. tap Videos → assert Video Studio content)

---

## 📐 Architecture Decisions

- **Single source of truth for tabs** — `_TabConfig` list in `HomeActivity` drives `DefaultTabController`, `TabBar`, and `TabBarView` simultaneously, eliminating mismatch bugs.
- **Reusable screen template** — `FragmentPageTemplate` widget in `widgets/` provides a consistent gradient card + highlight list layout across all screens without duplication.
- **Feature-based folder layout** — `screens/` for pages, `widgets/` for shared components — scales cleanly as the app grows.
- **Material 3 theming** — Seed color `#0F4C81` generates the full `ColorScheme` automatically using Material You.

---

## 📦 Release Notes

### v1.0.0 — Initial Release
- Professional 5-tab navigation shell
- Material 3 theming with branded color scheme
- Reusable `FragmentPageTemplate` component
- Widget-tested navigation and branding
- Clean `screens/` and `widgets/` folder structure
- Zero lint warnings (`flutter analyze` passes clean)

---

## 🔮 Roadmap

- [ ] Add real API integration per screen
- [ ] Integrate state management (Riverpod or BLoC)
- [ ] Add dark mode support
- [ ] Publish screenshots after device build
- [ ] Add CI/CD pipeline (GitHub Actions)

---

## 📄 License

```
MIT License

Copyright (c) 2026 asoporitech

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction.
```

---

## 👨‍💻 Author

**Jahidul Islam**  
Flutter Developer · [@asoporitech](https://github.com/asoporitech)

---

<div align="center">
  <sub>Built with ❤️ using Flutter</sub>
</div>
