void main() {
  int area_or_perimeter(int l, int w) => l == w ? l * w : (l + w) * 2;

  area_or_perimeter(12, 6);
}
