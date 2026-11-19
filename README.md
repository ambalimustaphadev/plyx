# Plyx

**Discover a movie gem every day.** Plyx is a Flutter movie app that gives you one handpicked "Film of the Day". You can rate it, pin it to watch later, and build a viewing streak along the way.

<p align="center">
  <img src="docs/screenshots/onboarding.png" alt="Plyx onboarding screen" width="300">
</p>

> **Status:** UI prototype. All screens and navigation work, but the content comes from local mock data, and the Google/Apple sign-in buttons are visual only for now.

## Features

- **Animated splash screen** with the Plyx wordmark fading in and out.
- **Three-step onboarding**: *Discover Daily Movie Gems*, *Build Your Movie Streak*, *Find Where to Watch Instantly*. The pages use custom slide transitions.
- **Sign-in screen** with Google and Apple buttons.
- **Personalization** step where you pick the movies, genres, actors and themes you enjoy.
- **Home: Film of the Day**, with poster, synopsis and quick actions to **Rate**, **Watch** or **Pin**.
- **Rating dialog** with a 1–5 star rating and a confirmation message.
- **My Pins**: your saved movies.
- **Feed**: social-style posts with images, hashtags, likes and comments.
- **Notifications** and a **Profile** page with sign-out.

## Tech stack

| | |
|---|---|
| Framework | [Flutter](https://flutter.dev) (Dart SDK `^3.5.3`) |
| UI | Material + Cupertino widgets, custom fonts (NicoMoji, Mulish) |
| Packages | `intl`, `dotted_border`, `google_sign_in`, `cupertino_icons` |
| Platforms | iOS, Android (plus Flutter's web/desktop scaffolding) |

## Getting started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (last tested with Flutter 3.50)
- For iOS: Xcode and CocoaPods
- For Android: Android Studio with an emulator or a connected device

Run `flutter doctor` to check your setup.

### Run the app

```bash
git clone https://github.com/ambalimustaphadev/plyx.git
cd plyx
flutter pub get
flutter run            # pick a device, or: flutter run -d <device-id>
```

To target a specific simulator or emulator, list them with `flutter devices`.

### Run the tests

```bash
flutter test
```

The widget test checks that the splash screen renders and then moves on to the first onboarding slide.

## Project structure

```
lib/
├── main.dart                     # App entry point, theme and named routes
├── data/
│   ├── models /                  # Mock data: feed, pins, notifications
│   └── repositories/
│       └── slidePageRoute/       # Custom slide page transition
└── presentation/
    ├── screens/
    │   ├── splashScreen/
    │   ├── sliderScreens/        # Onboarding slides 1–3
    │   ├── loginScreen/
    │   ├── personalizedScreen/
    │   ├── homeScreen/           # Film of the Day
    │   ├── pinScreen/
    │   ├── feedScreen/
    │   ├── notificationScreen/
    │   └── profileScreen/
    └── widgets /                 # App bar, rating dialog
assets/
├── fonts/                        # NicoMoji, Mulish
└── images/                       # Posters and icons
```

> Note: the `models ` and `widgets ` folders have a trailing space in their names. Imports reference them as `models%20` and `widgets%20`.

## Roadmap

- [ ] Wire up real Google and Apple sign-in
- [ ] Fetch movies from an API (e.g. TMDB) instead of mock data
- [ ] Persist pins, ratings and streaks
- [ ] "Where to watch" streaming availability
- [ ] Push notifications for the daily pick

## Author

**Ambali Mustapha**: [@ambalimustaphadev](https://github.com/ambalimustaphadev)
