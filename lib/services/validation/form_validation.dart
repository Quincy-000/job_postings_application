import 'package:email_validator/email_validator.dart';

class Validation {
  String? nameValidation(value) {
    if (value!.isEmpty) {
      return 'Please Enter Name';
    }
    return null;
  }

  String? addressValidation(value) {
    if (value!.isEmpty) {
      return 'Please Enter Address';
    }
    return null;
  }

  String? emailValidation(value) {
    if (value!.isEmpty) {
      return 'Please Enter E-Mail';
    } else {
      final bool isValid = EmailValidator.validate(value);
      return isValid
          ? null
          : 'Please Enter a Valid E-mail\nExample: "kofimintah@gmail.com"';
    }
  }

  String? phoneValidation(value) {
    if (value!.isEmpty) {
      return 'Please Enter Phone Number';
    } else if (value.length < 10) {
      return 'Please enter valid Phone Number\nMust be 10 digits';
    }
    return null;
  }

  String? referenceValidation(value) {
    if (value!.isEmpty) {
      return 'Please Enter Address';
    }
    return null;
  }
}
