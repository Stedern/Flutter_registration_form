# IT 126 Registration Form

A Flutter registration form for the IT 126 Mobile Development practical activity.

## Features

- First name, last name, email, password, and confirm password fields
- Required-field, email, password-strength, and matching-password validation
- Register button is disabled until the input is valid
- Password hide/show controls
- Keyboard dismisses when the user taps outside a field
- Successful registration appears in a dialog without displaying the password
- Fields are cleared after the successful dialog is closed
- Responsive scrolling layout for smaller screens and open keyboards

## Requirements

Install the Flutter SDK and make sure `flutter --version` works in a terminal.

## Run the project

1. Open this folder in VS Code.
2. Run `flutter pub get`.
3. Start an Android emulator, connect a device, or enable Chrome/web support.
4. Run `flutter run`.

To check the project:

```text
flutter analyze
flutter test
```

## Suggested demonstration steps

1. Tap `Register` before entering data. The button is disabled.
2. Enter an invalid email or weak password and observe the validation message.
3. Enter a different confirmation password and observe the mismatch message.
4. Enter valid values, then press `Register`.
5. Confirm that the dialog shows the name and email but never the password.
6. Close the dialog and confirm that all fields are cleared.
7. Tap outside a field while the keyboard is open to confirm that it dismisses.

## Code explanation guide

- `GlobalKey<FormState>` gives access to the form's validation state.
- `TextEditingController`s retrieve and clear the user's input.
- `_isFormValid` controls whether the submit button is enabled.
- Each validator returns an error message or `null` when its field is valid.
- `_register` unfocuses the keyboard, validates the form, reads safe display fields, opens the dialog, and clears the controllers.
- `dispose` releases every controller when the page is removed.
