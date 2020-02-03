# shoppingmodel

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Get packages flutter
flutter packages get

# Build an APK default release
flutter build apk

# Build an APK default release with build name and build number
flutter build apk --build-name shoppingmodel --build-number 1.0.0.1

# Build an APK default release all the target ABIs This command results in three APK files: app-armeabi-v7a / app-arm64-v8a / app-x86_64
flutter build apk --split-per-abi

# Build an app bundle
flutter build appbundle

# Generate icon app
flutter pub run flutter_launcher_icons:main