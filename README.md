# Bro Form Validator

Form validator that provide common and custom validators for brovelopers

## Usage

assign it directly to a TextFormField validator

```dart
TextFormField(
  validator: EmailValidator(errorText: 'enter a valid email address')
);
```

is possible to create an instance to reuse it

```dart
final requiredValidator = RequiredValidator(errorText: 'this field is required');
```

## Multi rules validation

assign the the multi validator to the TextFormField validator

```dart
final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
]);

TextFormField(
  validator: passwordValidator,
),

```

It's possible to nest MultiValidator

```dart
final passwordValidator = MultiValidator([
  MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  ]),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
]);
```

## Make your own validator

use BroFieldValidator

```dart
class PhoneValidator extends BroFieldValidator {
  // pass the error text to the super constructor
  PhoneValidator({String errorText = 'enter a valid LYD phone number'}) : super(errorText);

  // return false if you want the validator to return error
  // message when the value is empty.
  @override
  bool get ignoreEmptyValues => true;

  @override
  bool isValid(String value) {
    // return true if the value is valid according the your condition
    return hasMatch(r'^((+|00)?218|0?)?(9[0-9]{8})$', value);
  }
}
```

and use this directly

```dart
TextFormField(validator: PhoneValidator());
```

## Make your own validator with non String values

just extend the base FieldValidator class

```dart
class CustomValidator extends FieldValidator<T>{
  CustomValidator(String errorText) : super(errorText);

  @override
  bool isValid(T value) {
    return //condition;
  }
}
```
