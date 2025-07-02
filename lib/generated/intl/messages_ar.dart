// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(time) => "إعادة إرسال الرمز خلال ${time}";

  static String m1(phone_number) =>
      "تم إرسال رسالة نصية إلى ${phone_number}، أدخل الرمز المكون من 4 أرقام";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Personal_id": MessageLookupByLibrary.simpleMessage("رقم البطاقه الشخصية"),
    "Resend_code_time": m0,
    "about_us": MessageLookupByLibrary.simpleMessage("معلومات عنا"),
    "change_password": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "change_password_message": m1,
    "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "confirm_new_password": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور الجديدة",
    ),
    "contact_us": MessageLookupByLibrary.simpleMessage("تواصل معنا"),
    "did_you_forgot_password": MessageLookupByLibrary.simpleMessage(
      " هل نسيت كلمة المرور؟",
    ),
    "enter_id": MessageLookupByLibrary.simpleMessage("ادخل رقم البطاقه"),
    "forgot_password": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور"),
    "lang": MessageLookupByLibrary.simpleMessage("عربى"),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "new_password": MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "password_changed_successfully": MessageLookupByLibrary.simpleMessage(
      "تم تغيير كلمة المرور بنجاح",
    ),
    "password_mismatch": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور غير متطابقة",
    ),
    "passwords_dose_not_match": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور غير متطابقة",
    ),
    "required_id": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رقم البطاقة الشخصية",
    ),
    "required_password": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال كلمة المرور",
    ),
    "wrong_password": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور غير صحيحة",
    ),
  };
}
