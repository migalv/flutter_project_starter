# Complete Flutter Project Starter (In Development)
A Flutter Project Starter with very useful libraries and boilerplate code to help you setup your Flutter projects in minutes.

## Flutter version
This project starter pack was created using Flutter v2.10.2
*I would recommend to always update the Flutter version used in your project*

## Project setup
Follow these steps to properly setup your project.

1. Generate code generation files `flutter pub run build_runner build --delete-conflicting-outputs`

## Code generation
Code generation is super useful, it reduces the amount of boilerplate code we have to write allowing us to focus on more important aspects of the development.

Code generation works mainly works with the `build_runner` tool. You can find it in the `dev_dependencies` in the `pubspec.yaml` file.

The main command you have to learn is the following:
`flutter pub run build_runner build --delete-conflicting-outputs`
This command will generate the necessary files based on the code generation libraries that you are using.

Another usefull command is:
`flutter pub run build_runner watch --delete-conflicting-outputs`
The main difference is that you are executing the `watch` command instead of the `build` command. This will make it so everytime you save the files in your project it will rerun the code generation so you always have the updated version for the generated files.

## Exceptions
For error handling I recommend using exceptions. All exceptions that you create should extend the `BaseException` class.
Each exception is mapped to a specific and unique error code. This is very helpful for bug localization, because you can then search for the error code in your code and find all the places it could be happening.
Check the *domain\exceptions\example_exception.dart* and the *domain\exceptions\base_exception.dart* files to get an idea on how to create new exceptions.
**TODO COMPLETE**

## Linting

## Testing
**TODO COMPLETE**

## Recommended Libraries
These are the libraries that I would recommend any Flutter developer that wants to bring their code quality to the next level.

<details>
    <summary>Mockito</summary>
    Best library to quickly create mocks for proper testing.
    Pub link: https://pub.dev/packages/mockito
</details>
**TODO COMPLETE LIST**


## Snippets
Some useful snippets to make your coding journey a bit more enjoyable.

If you use VSCode add them to the dart.json snippets configuration file.

<details>
    <summary>Quick Part Statement</summary>
    Super neat for code generation.
    ```
    "Part statement": {
      "prefix": "ptg",
      "body": [
        "part '${TM_FILENAME_BASE}.g.dart';",
      ],
      "description": "Creates a filled-in part statement"
    }
    ```
</details>
**TODO COMPLETE LIST**

