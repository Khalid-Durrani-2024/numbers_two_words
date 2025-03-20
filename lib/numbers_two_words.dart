library num_to_words;

import './localization/english.dart';
import './localization/pashto.dart';
import './localization/dari.dart';

class NumbersTwoWords {
  static String getNumber(int no, String language) {
    Map<int, String> data;

    switch (language) {
      case 'ps':
        data = numbersTwoWordsPashto;
        break;
      case 'en':
        data = numbersTwoWordsEnglish;
        break;
      case 'fa':
        data = numbersTwoWordsDari;
        break;
      default:
        return "Invalid Language";
    }

    if (data.containsKey(no)) {
      return data[no]!;
    } else {
      return "Invalid Number";
    }
  }
}
