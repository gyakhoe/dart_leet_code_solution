// ignore_for_file: unused_import

import 'package:dart_console_app_leetcode/dart_console_app_leetcode.dart'
    as dart_console_app_leetcode;
import 'package:dart_console_app_leetcode/longest_common_string.dart';
import 'package:dart_console_app_leetcode/valid_parenthesis.dart';

void main(List<String> arguments) {
  // print('Hello world: ${dart_console_app_leetcode.calculate()}!');

  // final commonString =
  //     LongesCommonString().longestCommonString(["flower", "flow", "flight"]);
  // print(commonString);

  //print(ValidParenthesis().isValid("()[]{}"));

  print(lengthOfLastWord("   fly me   to   the moon  "));
}

int lengthOfLastWord(String s) {
  if (s.length == 1) {
    return 1;
  }

  int length = 1;
  final lastIndexOfSpace = s.lastIndexOf(' ');
  if (lastIndexOfSpace == s.length - 1) {
    print('here');
    int counter = lastIndexOfSpace;
    while (s[counter] == ' ') {
      counter--;
    }
    while (s[counter] != ' ') {
      counter--;
      length++;
    }
  } else {
    print('there');
    int counter = lastIndexOfSpace;
    while (s[counter] == '') {
      counter++;
    }
    while (s[counter] != ' ' && s.length - 1 != counter) {
      counter++;
      length++;
    }
  }
  return length;
}
