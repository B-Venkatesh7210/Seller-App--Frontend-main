extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String camelCas() {
    List<String> _splittedString = split(' ');

    if (_splittedString.isEmpty) {
      return '';
    }

    String _firstWord = _splittedString[0].toLowerCase();
    List<String> _restWords = _splittedString
        .sublist(1)
        .map(
          (String x) => StringExtension(x).capitalize(),
        )
        .toList();
    return _firstWord + _restWords.join('');
  }

  bool get isValidName {
    RegExp regExp = RegExp(r"^(?![\. ])[a-zA-Z\. ]+(?<! )$");
    return regExp.hasMatch(this);
  }

  bool get isValidMobileNumber {
    RegExp regExp = RegExp(r"\+?\d[\d -]{8,12}\d");
    return regExp.hasMatch(this);
  }

  bool get isValidEmail {
    RegExp regExp = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
    return regExp.hasMatch(this);
  }
}

extension Percentage on double {
  double get onePercent => (this * 0.01).roundToDouble();

  double get twoPercent => (this * 0.02).roundToDouble();

  double get twoPointFivePercent => (this * 0.025).roundToDouble();

  double get threePercent => (this * 0.03).roundToDouble();

  double get fivePercent => (this * 0.05).roundToDouble();

  double get sevenPointFivePercent => (this * 0.075).roundToDouble();

  double get tenPercent => (this * 0.1).roundToDouble();

  double get fifteenPercent => (this * 0.15).roundToDouble();

  double get twentyPercent => (this * 0.2).roundToDouble();

  double get twentyFivePercent => (this * 0.25).roundToDouble();

  double get thirtyPercent => (this * 0.3).roundToDouble();

  double get thirtyFivePercent => (this * 0.35).roundToDouble();

  double get fortyPercent => (this * 0.4).roundToDouble();

  double get fiftyPercent => (this * 0.5).roundToDouble();

  double get seventyPercent => (this * 0.7).roundToDouble();

  double get eightyPercent => (this * 0.8).roundToDouble();

  double get ninetyPercent => (this * 0.9).roundToDouble();

  double get ninetyFivePercent => (this * 0.95).roundToDouble();
}
