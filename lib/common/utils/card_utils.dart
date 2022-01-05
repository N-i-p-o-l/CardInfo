import 'package:easy_localization/easy_localization.dart';

class CardUtils {
  static String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return tr('field_required');
    }

    input = getCleanedNumber(input);

    if (input.length < 8) {
      return tr('card_invalid');
    }

    int sum = 0;
    final int length = input.length;
    for (var i = 0; i < length; i++) {
      int digit = int.parse(input[length - i - 1]);

      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }

    return tr('card_invalid');
}

  static String getCleanedNumber(String text) {
    final RegExp regExp = RegExp(r'[^0-9]');
    return text.replaceAll(regExp, '');
  }
}
