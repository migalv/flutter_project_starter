[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

# Definitive Flutter Project Starter
A Flutter Project Starter with very useful libraries and boilerplate code to help you setup your Flutter projects in minutes.

## Flutter version
This project starter pack was created using Flutter v3 <br>
*I would recommend to always have up-to-date the Flutter versions used in your project*

## Architecture
This project uses parts of the Clean Architecture. The folder structure is layered following the different layers of the Architecture:

- Presentation layer
- Application layer
- Domain layer
- Infrastructure layer

<img src="./assets/markdown_files/clean_arch_diag.svg">

You can read a more detailed information about each layer in their respective folders.

## Project setup
Follow these steps to properly setup your project.

1. Generate code generation files `flutter pub run build_runner build --delete-conflicting-outputs`
2. Change the name of the project in the pubspec.yaml
3. Search for complete_flutter_project_starter in the project & change it to you project name (IMPORTANT: also check for directories)

## Code generation
Code generation is super useful, it reduces the amount of boilerplate code we have to write allowing us to focus on more important aspects of the development.

Code generation works mainly works with the `build_runner` tool. You can find it in the `dev_dependencies` in the `pubspec.yaml` file.

The main command you have to learn is the following:
`flutter pub run build_runner build --delete-conflicting-outputs`. 
This command will generate the necessary files based on the code generation libraries that you are using.

Another usefull command is:
`flutter pub run build_runner watch --delete-conflicting-outputs`. 
The main difference is that you are executing the `watch` command instead of the `build` command. This will make it so everytime you save the files in your project it will rerun the code generation so you always have the updated version for the generated files.

## Flavors
This project contains 3 flavors:

1. **DEV** - Development environment. This should be used for developing the app.
2. **QA** - Q&A environment. This environment is used to test the app.
3. **PROD** - Production environemnt. This is the enviroment that will be published and will run on production.

### **Finish Flavor setup**
To finish the flavor setup for this template. Follow the steps below or you can check this great [post](https://flutterguide.com/flutter-flavor-separating-build-environments-in-flutter-apps/) by flutterguide.com

#### Android
- Change the package identifier. Go to /android/app/build.gradle
- Change the App display name. Go to ./android/app/src/<flavor>/res/values/strings.xml
- Change icons for each flavor. Go to ./android/app/src/<flavor>/res/

#### iOS
- Change the package identifer. In XCode go to Runner Targets > Build Settings > Search for Package identifier
- Change the App display name. In XCode go to Runner Targets > Build Settings > Search for APP_DISPLAY_NAME
- Change icons for each flavor. In XCode go to Runner > Assets

EXTRA: Great tool to generate App icons: [Icon Kitchen](https://icon.kitchen/)
### **How to build**

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor dev --target lib/main_dev.dart

# Testing
$ flutter run --flavor qa --target lib/main_qa.dart

# Production
$ flutter run --flavor prod --target lib/main_prod.dart
```

### **How to run**

You can build the different flavors by using the following command:

```
flutter build <platform> [--profile | --release] --flavor <environment> -t <path_to_main>
```

`<platform>` lets you choose between Android or iOS. Replace with:
- ios
- appbundle

`[--profile | --release]` is an optional option to let you select between Profile or Release Mode:
- `--profile`
- `--release`

`<flavor>` allows you to choose between the 3 different flavors:
- `prod` for publishing on app stores
- `qa` for QA & testing
- `dev` for development

You need to specify a `<path_to_main>` for each flavor. These mains can be found in:
- `lib/main_prod.dart` for the production flavor.
- `lib/main_qa.dart` for the testing flavor.
- `lib/main_dev.dart` for the development flavor.

## Linting
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

For linting we use the [lint](https://pub.dev/packages/lint) library. The set of rules follows the [Effective Dart: Style Guide](https://dart.dev/guides/language/effective-dart/style). Please refer to it to better understand the reasons for the strict rules.

## Navigation
For the navigation I recommend using the [auto_route](https://pub.dev/packages/auto_route) package.

Routes are defined in ./lib/routes/routes.dart

## Splash screen
A quick and easy way to add a splash screen to your projects is to use the [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) package

### Editing
To edit the splash screens just go to `/flutter_native_splash-<flavor>.yaml` and edit it's contents. It's super easy.

### Run this command to create your splash screen:
You have to run the command for each flavor `prod` `dev` `qa`
`flutter pub run flutter_native_splash:create --flavor <flavor>`

## Recommended Libraries
These are the libraries that I would recommend any Flutter developer that wants to bring their code quality to the next level.

<details>
    <summary>BLoC state management</summary>
    <br>
    Most known state management library for Flutter.<br>
    Pub links: <br>
    - https://pub.dev/packages/flutter_bloc <br>
    - https://pub.dev/packages/bloc <br>
    Documentation: https://bloclibrary.dev <br>
</details>
<br>
<details>
    <summary>Dependency injection</summary>
    <br>
    For depenceny injection. Generates boilerplate code & saves time for development.<br>
    GetIt: <br>
    - https://pub.dev/packages/get_it <br>
    <br>
    Injectable: <br>
    - https://pub.dev/packages/injectable <br>
    - https://pub.dev/packages/injectable_generator <br>
</details>
<br>
<details>
    <summary>Serialization</summary>
    <br>
    The JSON serializable developed by Google helps to reduce the work when serializing Dart objects to JSON objects, reducing the boilerplate. <br>
    Pub links: <br>
    - https://pub.dev/packages/json_serializable <br>
    - https://pub.dev/packages/json_serializable_generator <br>
</details>
<br>
<details>
    <summary>Testing</summary>
    <br>
    Mockito is the best library to quickly create mocks for proper testing .<br>
    Pub link: https://pub.dev/packages/mockito<br>
</details>
<br>
<details>
    <summary>Flutter native Splash</summary>
    <br>
    Library integrates native splash screens & simplifies the process for Flutter. <br>
    Pub link: https://pub.dev/packages/flutter_native_splash <br>
</details>
<br>

## Snippets
Some useful snippets to make your coding journey a bit more enjoyable.

If you use VSCode add them to the dart.json snippets configuration file.

<details>
    <summary>Quick Part Statement</summary>
    <br>
    Super neat for code generation. 
    <code><pre> 
    "Part statement": {
      "prefix": "ptg",
      "body": [
        "part '${TM_FILENAME_BASE}.g.dart';",
      ],
      "description": "Creates a filled-in part statement"
    }</code>
</details>
<details>
    <summary>Quick Test structure</summary>
    <br>
    Super neat to create a a test file.
    <code><pre> 
    "Test file": {
      "scope": "dart",
      "prefix": "stest",
      "body": [
        "import 'package:flutter_test/flutter_test.dart';",
        "",
        "void main() {",
        "",
        "  setUp(() {",
        "",
        "  });",
        "",
        "  group('', () {",
        "    test(",
        "      'should ',",
        "      () async {",
        "        // arrange",
        "",
        "        // act",
        "",
        "        // assert",
        "",
        "      },",
        "    );",
        "  });",
        "}",
      ],
      "description": "Creates the boilerplate structure for a test file"
    },</code>
</details>
<details>
    <summary>Quick AAA test structure</summary>
    <br>
    Super neat to quickly generate AAA tests.
    <code><pre> 
    "Test AAA structure": {
      "scope": "dart",
      "prefix": "aaa",
      "body": [
        "test(",
        "  'should ',",
        "  () async {",
        "  // arrange",
        "  ",
        "  // act",
        "  ",
        "  // assert",
        "  ",
        "  },",
        ");",
      ],
      "description": "Creates a test with the arrange => act => assert structure"
    }</code>
</details>