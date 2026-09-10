# Registration Form

A Flutter registration form for the IT 126 practical activity.

## Features

- First name, last name, email, password, and confirm password fields
- Required-field, email, password-strength, and matching-password validation
- Submit button is disabled until the input is valid
- Password hide/show controls
- Keyboard dismisses when the user taps outside a field
- Successful registration appears above the form
- Only the name and email are displayed after submission
- Fields are cleared after successful submission
- Blue-and-white responsive layout

## Requirements

Install the Flutter SDK and make sure `flutter --version` works in a terminal.

## Run the project

1. Open this folder in VS Code.
2. Run `flutter pub get`.
3. Start an Android emulator, connect an Android device, or use Chrome.
4. Run `flutter run`.

To check the project:

```text
flutter analyze
flutter test
```

## Suggested demonstration steps

1. Tap `Submit` before entering data. The button is disabled.
2. Enter an invalid email or weak password and observe the validation message.
3. Enter a different confirmation password and observe the mismatch message.
4. Enter valid values, then press `Submit`.
5. Confirm that the success result shows the name and email, but not the password.
6. Confirm that the fields are cleared and do not remain red.
7. Tap outside a field while the keyboard is open. The keyboard should dismiss.

## Code explanation guide

- `_formKey` gives access to the form's validation state.
- `TextEditingController`s retrieve and clear the input.
- `_isFormValid` controls whether the Submit button is enabled.
- Validators return an error message or `null` when the input is valid.
- `_register` dismisses the keyboard, validates the form, stores the name and email, clears the fields, and creates a fresh form key.
- The fresh form key clears old validation errors after submission.
- `dispose` releases all controllers.
