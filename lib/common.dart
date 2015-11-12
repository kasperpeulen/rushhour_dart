cantorPair(int a, int b) => (a + b) * (a + b + 1) + 2 * a;

szudzikPairIntegers(int a, int b) {
  a = a >= 0 ? 2 * a : -2 * a -1;
  b = b >= 0 ? 2 * b : -2 * b -1;
  return szudzikPair(a,b);
}

szudzikPair(int a, int b) {
  return a >= b ? a * a + a + b : a + b * b;
}