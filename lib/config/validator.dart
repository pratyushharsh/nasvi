class Validator {
  static final RegExp _imagePathExp = RegExp(
    r'^.+\.(?:jpg|gif|png)$',
  );

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^.{6,}$',
  );

  static final RegExp _pancardValidator = RegExp(
      r'^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$'
  );

  static final RegExp _aadhaarCardValidator = RegExp(
    r'^[0-9]{12}$'
  );
  static final RegExp _voterCardValidator = RegExp(
      r'^([a-zA-Z]){3}([0-9]){7}?$'
  );
  static final RegExp _postalcodeValidator = RegExp(
      r'^([0-9]{6})$'
  );
  static final RegExp _rationcardValidator = RegExp(
      r'$^([a-zA-Z0-9]){8,12}\s*'
  );
  static final RegExp _ageValidator = RegExp(
      r'(?:\b|-)([1-9]{1,2}[0]?|100)\b'
  );
  static final RegExp _name = RegExp(
      r'(^[a-zA-Z]*$)'
  );
  static final RegExp _mobilenumberValidator = RegExp(
      r'^[0][1-9]\d{9}$|^[1-9]\d{9}$'
  );

  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  static isValidPanCard(String pancardno) {
    return _pancardValidator.hasMatch(pancardno);
  }

  static isValidImagePath(String image) {
    return _imagePathExp.hasMatch(image);
  }

  static isValidAadhaarCard(String aadhaar) {
    return _aadhaarCardValidator.hasMatch(aadhaar);
  }
  static isValidVoterCard(String voter) {
    return _voterCardValidator.hasMatch(voter);
  }
  static isValidPostalCode(String postal) {
    return _postalcodeValidator.hasMatch(postal);
  }
  static isValidRationCard(String ration) {
    return _rationcardValidator.hasMatch(ration);
  }
  static isValidMobileNo(String mobile) {
    return _mobilenumberValidator.hasMatch(mobile);
  }
  static isValidAge(String age) {
    return _ageValidator.hasMatch(age);
  }

  static isValidName(String name) {
    return _name.hasMatch(name);
  }
}