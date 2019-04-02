void main() {
  int squareSum(List numbers) {
    var sum = 0;
    for (var number in numbers) {
      sum += number * number;
    }
    // print(sum);
    return sum;
  }

  squareSum([1, 2]);
}
