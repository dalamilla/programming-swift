// Each new term in the Fibonacci sequence is generated by adding the previous two terms.
// By starting with 1 and 2, the first 10 terms will be:
//                     1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// By considering the terms in the Fibonacci sequence whose values do not exceed
// four million, find the sum of the even-valued terms.

/// Class for the solution of second Euler problem.
public class Euler002 {

  /// Solution of second Euler problem.
  ///
  /// - Parameter n: Value that limit the sum of Fibonacci numbers.
  /// - Returns: The Sum of even Fibonacci numbers below n.
  static func solution(n: Int) -> Int {
    var sum = 0

    var fib0 = 0
    var fib1 = 1
    var fib2 = fib0 + fib1

    while fib2 <= n {
      if fib2 % 2 == 0 {
        sum += fib2
      }
      fib0 = fib1
      fib1 = fib2
      fib2 = fib0 + fib1
    }

    return sum
  }

}
