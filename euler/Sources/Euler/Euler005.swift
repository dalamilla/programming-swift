// 2520 is the smallest number that can be divided by each of  the numbers from
// 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the
// numbers from 1 to 20?

/// Class for the solution of fifth Euler problem.
public class Euler005 {

  /// Solution of fifth Euler problem.
  ///
  /// - Parameter n: Value that limit the smallest positive number that is evenly divisible from 1 to n.
  /// - Returns: The Smallest positive number that is evenly divisible by
  ///   all of the numbers from 1 to n.
  static func solution(n: Int) -> Int {
    var found = true
    var number = 0

    while found {
      var i = 1
      number += n

      while number % i == 0 && i <= n {
        if i == n {
          found = false
        }
        i = i + 1
      }
    }

    return number

  }

}
