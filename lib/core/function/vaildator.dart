class AppVaildtor {
  static String? displayNameValidator(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return "User name must not be empty";
    }
    return null;
  }

  static String? passwordVaildtor(String? vlaue) {
    if (vlaue!.isEmpty) {
      return "Please Enter Your Password";
    }
    if (vlaue.length < 6) {
      return "password must be < 8 and contain charchter and numbers";
    }
    return null;
  }

  static String? phoneNumberVaildtor(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return "Phone Number must not be empty";
    }
    return null;
  }

  static String? confirmPasswordVaildtor({String? password, String? value}) {
    if (value != password) {
      return "Passwords Must be similar ";
    }
    return null;
  }
}
