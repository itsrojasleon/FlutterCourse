void main() {
  isSquare(n) {
    for (var i = 0; i < n / 2 + 2; i++) {
      print(i);
      if (i * i == n) {
        return true;
      }
    }
    return false;
  }

  isSquare(25);
}
