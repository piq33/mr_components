extension StringExtension on String? {
  bool phoneNumber() {
    final phoneNumber = this;
    if (phoneNumber == null) return false;
    RegExp exp = RegExp(r"1[0-9]\d{9}$");
    return exp.hasMatch(phoneNumber);
  }
}
