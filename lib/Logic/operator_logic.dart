double evaluate(String input) {
  final operators = ['+', '-', '*', '/'];
  final exp = input.replaceAll(' ', '');
  final regex = RegExp(r'(\d+(\.\d+)?|[\+\-\*/])');
  final parts = regex.allMatches(exp).map((e) => e.group(0)!).toList();

  int i = 0;
  while (i < parts.length) {
    if (parts[i] == '*' || parts[i] == '/') {
      double left = double.parse(parts[i - 1]);
      double right = double.parse(parts[i + 1]);
      double result = parts[i] == '*' ? left * right : left / right;
      parts.replaceRange(i - 1, i + 2, [result.toString()]);
      i = 0;
    } else {
      i++;
    }
  }

  double result = double.parse(parts[0]);
  i = 1;
  while (i < parts.length) {
    String op = parts[i];
    double num = double.parse(parts[i + 1]);
    if (op == '+') result += num;
    if (op == '-') result -= num;
    i += 2;
  }

  return result;
}