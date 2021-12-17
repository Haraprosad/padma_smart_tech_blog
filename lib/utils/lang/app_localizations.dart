import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/utils/sp/sp_utils.dart';
import '../lang/bn_lang.dart';
import 'package:get/get.dart';

import 'en_lang.dart';
import 'lang_cons.dart';

class LocalizationService extends Translations {
  // Default locale
  // static final locale = Locale('en', 'US');

  static Locale getLocal() {
    var code = SpUtils.getLangCode();
    // TODO: Add other locals
    switch (code) {
      case "en":
        return LanguageConstant.ENGLISH_CODE;
        break;
      case "bn":
        return LanguageConstant.BENGALI_CODE;
        break;
      default:
        return LanguageConstant.ENGLISH_CODE;
    }
  }

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = LanguageConstant.ENGLISH_CODE;

  // Supported languages
  // Needs to be same order with locales
  // TODO: Add other Language Names
  static final langs = [
    LanguageConstant.ENGLISH,
    LanguageConstant.BENGALI,
  ];

  // Supported locales
  // Needs to be same order with langs
  // TODO: Add other code
  static final locales = [
    LanguageConstant.ENGLISH_CODE,
    LanguageConstant.BENGALI_CODE,
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS, // lang/en_lang.dart
        'bn_BD': bnBN, // lang/bn_lang.dart
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
    // save into get storage
    SpUtils.setLangCode(locale.languageCode);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale ?? LanguageConstant.ENGLISH_CODE;
  }
}
