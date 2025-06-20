int add(int a, int b) {
  int result = a + b;
  return result;
}

int sub(int a, int b) {
  int result = a - b;
  return result;
}

String showFunc(int a, int b) {
  String resultAdd = "Add ${a} + ${b} = ${add(a, b)}";
  String resultSub = "Sub ${a} - ${b} = ${sub(a, b)}";

  return resultAdd + "\n" + resultSub;
}
