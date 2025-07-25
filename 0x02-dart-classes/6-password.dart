class Password {
  String? _password = "";

  Password({required String password}) {
    _password = password;
  }

  bool isValid() {
    return _password != null &&
        _password!.length >= 8 &&
        _password!.length <= 16 &&
        _password!.contains(RegExp(r'[0-9]')) &&
        _password!.contains(RegExp(r'[a-z]')) &&
        _password!.contains(RegExp(r'[A-Z]'));
  }

  @override
  String toString() {
    return "Your Password is: ${_password ?? ""}";
  }

  String? get password => _password;
  set password(String? password) {
    _password = password;
  }
}
