class Password {
  String password;
  Password({required this.password}) {
    if (this.password.length < 8) {
      throw Exception("Password should not below 8 character");
    }
  }
  @override
  String toString() {
    return password;
  }
}
