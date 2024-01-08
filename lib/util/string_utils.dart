extension StringExtension on String {
  bool get hasUrlEncodedCharacters => RegExp(r'%[0-9a-fA-F]{2}').hasMatch(this);
}
