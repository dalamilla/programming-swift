// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

/// Class for the solution of first Euler problem.
public class Euler001 {

  /// Solution of first Euler problem.
  ///
  /// - Parameter n: Value that limit the sum of natural numbers.
  /// - Returns: The Sum of natural numbers that are multiples of 3 or 5 below n.
  static func solution(n: Int) -> Int {
    return (1...(n - 1)).filter({ $0 % 3 == 0 || $0 % 5 == 0 }).reduce(0, +)
  }

}
