extension StringExtension on String {
  String capitalize() {
    if (length == 0) {
      return '';
    }
    var text = this[0].toUpperCase();
    if (length > 1) {
      text = '$text${substring(1).toLowerCase()}';
    }
    return text;
  }
}
