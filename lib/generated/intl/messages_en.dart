// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(time) => "Resend  code within ${time}";

  static String m1(phone_number) =>
      "A text message has been sent to ${phone_number}, enter the 4-digit code";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Personal_id": MessageLookupByLibrary.simpleMessage("Personal ID number"),
    "Resend_code_time": m0,
    "about_us": MessageLookupByLibrary.simpleMessage("About Us"),
    "change_password": MessageLookupByLibrary.simpleMessage("Change Password"),
    "change_password_message": m1,
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirm_new_password": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password",
    ),
    "contact_us": MessageLookupByLibrary.simpleMessage("Contact Us"),
    "enter_id": MessageLookupByLibrary.simpleMessage("Enter your ID number"),
    "forgot_password": MessageLookupByLibrary.simpleMessage("Forgot password?"),
    "lang": MessageLookupByLibrary.simpleMessage("English"),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "password_changed_successfully": MessageLookupByLibrary.simpleMessage(
      "Password changed successfully",
    ),
    "passwords_dose_not_match": MessageLookupByLibrary.simpleMessage(
      "Passwords dose not match",
    ),
    "required_id": MessageLookupByLibrary.simpleMessage(
      "Please enter your ID number",
    ),
    "required_password": MessageLookupByLibrary.simpleMessage(
      "Please enter your password",
    ),
    "wrong_password": MessageLookupByLibrary.simpleMessage("Wrong password"),
  };
}
