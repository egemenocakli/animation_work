extension StringExtensionTr on String? {
  bool get checkUsernameContainsTurkishCharacter {

    String value = this ?? '';

    if (value.contains("ş") ||
        value.contains("ğ") ||
        value.contains("ç") ||
        value.contains("ı") ||
        value.contains("ö") ||
        value.contains("ü") ||
        value.contains(' ')) {
      return true;
    }
    return false;
  }
}


