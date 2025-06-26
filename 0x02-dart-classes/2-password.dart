class Password {
 String password = "";

 bool isValid() {
  if (password.length > 16 || password.length < 8) {
    return false;
  }

  bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
  bool hasDigits = password.contains(new RegExp(r'[0-9]'));
  bool hasLowercase = password.contains(new RegExp(r'[a-z]'));

  return hasUppercase & hasLowercase & hasDigits;
 }

 @override
  String toString() {
    return "Your Password is: ${password}";
  }
}
