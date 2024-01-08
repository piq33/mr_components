getGridViewHeight(int crossAxisCount, int len, double itemHeight, double spacing) {
  var count = len / crossAxisCount;
  var countUp = count.ceil();
  var countL = count.truncate();
  countL = len % crossAxisCount == 0 ? countL - 1 : countL;

  return itemHeight * countUp + countL * spacing * 2;
}
