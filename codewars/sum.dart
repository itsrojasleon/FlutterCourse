void main() {
  var a = new SequenceSum();
  a.showSequence(0);
}

class SequenceSum {
  String showSequence(num n) {
    int sum = 0;
    List nums = [];
    String s = '';
    if (n == 0) {
      nums.add(0);
      s = '0=0';
    } else if (n < 0) {
      s = '$n<0';
    } else {
      for (var i = 0; i <= n; i++) {
        nums.add(i);
        sum += i;
      }
      s = '${nums.join('+')} = $sum';
    }
    return s;
  }
}
