List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF= [];
  for (double celcius in temperaturesInC) {
    double result = celcius * 1.8 + 32;
    temperaturesInF.add(double.parse(result.toStringAsFixed(2)));
  }
  return temperaturesInF;
}
