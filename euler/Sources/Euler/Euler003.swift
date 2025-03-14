// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

/// Class for the solution of third Euler problem.
public class Euler003 {

  /// Solution of third Euler problem.
  ///
  /// - Parameter n: Value that find max prime factor.
  /// - Returns: The largest prime factor.
  static func solution(n: Int) -> Int {
    var pm = 2
    var n = n

    while n != 1 {
      if n % pm == 0 {
        n = n / pm
      } else {
        pm += 1
      }
    }

    return pm
  }

}
