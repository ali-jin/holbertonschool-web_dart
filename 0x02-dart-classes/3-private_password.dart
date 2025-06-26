class Password {
 String _password = "";

 Password({required String password}) {
  _password = password;
 }

 bool isValid() {
  if (_password.length > 16 || _password.length < 8) {
    return false;
  }

  bool hasUppercase = _password.contains(new RegExp(r'[A-Z]'));
  bool hasDigits = _password.contains(new RegExp(r'[0-9]'));
  bool hasLowercase = _password.contains(new RegExp(r'[a-z]'));

  return hasUppercase & hasLowercase & hasDigits;
 }

 @override
  String toString() {
    return "Your Password is: ${_password}";
  }
}
