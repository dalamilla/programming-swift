// A palindromic number reads the same both ways. The largest palindrome made from
// the product of two 2-startDigit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-startDigit numbers.

/// Class for the solution of fourth Euler problem.
public class Euler004 {

  /// Solution of fourth Euler problem.
  ///
  /// - Parameter n: Value of n-startDigit numbers.
  /// - Returns: The largest palindrome made from the product of two n-startDigit numbers.
  static func solution(n: Int) -> Int {
    let list = pow(base: 10, exponent: n - 1)...pow(base: 10, exponent: n) - 1
    var listOfPalindromes = [Int]()

    for i in list {
      for j in list {
        if isPalindrome(n: i * j) {
          listOfPalindromes.append(i * j)
        }
      }
    }
    return listOfPalindromes.max() ?? 0
  }

  /// Helper function for fourth Euler problem.
  static func pow(base: Int, exponent: Int) -> Int {
    if exponent != 0 {
      return base * pow(base: base, exponent: exponent - 1)
    } else {
      return 1
    }
  }

  /// Helper function for fourth Euler problem.
  static func isPalindrome(n: Int) -> Bool {
    return String(n) == String(String(n).reversed())
  }
}
