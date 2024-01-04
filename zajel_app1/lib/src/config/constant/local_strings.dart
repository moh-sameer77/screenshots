import 'package:get/get.dart';

class LocalStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Arabic': 'Arabic',
          'English': 'English',
        },
        'ar_SA': {
          'Arabic': 'العربية',
          'English': 'الانجليزية'
        }
      };
}
