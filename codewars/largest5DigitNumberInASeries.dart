// In the following 6 digit number:

// 283910
// 91 is the greatest sequence of 2 consecutive digits.

// In the following 10 digit number:

// 1234567890
// 67890 is the greatest sequence of 5 consecutive digits.

// Complete the solution so that it returns the greatest sequence of five consecutive digits found within the number given. The number will be passed in as a string of only digits. It should return a five digit integer. The number passed may be as large as 1000 digits.

// Adapted from ProjectEuler.net

void main() {
  int solution(String digits) {
    var largest = int.parse(digits.substring(0, 5));

    for (var i = 1; i < digits.length; i++) {
      if (int.parse(digits.substring(i, i + 5)) > largest) {
        print('object');
      }
    }
    print(largest);
    return 0;
  }

  solution('543432345323542323577678');
}
