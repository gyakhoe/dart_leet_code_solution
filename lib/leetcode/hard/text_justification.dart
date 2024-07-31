import 'dart:math';

List<String> fullyJustify(List<String> words, int maxWidth) {
  List<String> result = [];

  List<String> line = [];
  int length = 0;

  int i = 0;
  while (i < words.length) {
    if (length + line.length + words[i].length > maxWidth) {
      int extraSpace = maxWidth - length;
      double spaces = extraSpace / max(1, line.length - 1);
      int remainder = extraSpace % max(1, line.length - 1);

      for (int j = 0; j < line.length - 1; j++) {
        line[j] += " " * spaces.toInt();
        if (remainder > 0) {
          line[j] += " ";
          remainder -= 1;
        }
      }
    }

    result.join(words[i]);
    length += words[i].length;
    i += 1;
  }
  // Handling last line
  final lastLine = line.join(" ");
  final trailSpace = maxWidth - lastLine.length;
  result.add(lastLine + " " * trailSpace);
  return result;
}

void main() {
  final words1 = [
    "This",
    "is",
    "an",
    "example",
    "of",
    "text",
    "justification."
  ];
  final maxWidth1 = 16;
  // ["This    is    an", "example  of text", "justification.  "]
  print(fullyJustify(words1, maxWidth1));
}
