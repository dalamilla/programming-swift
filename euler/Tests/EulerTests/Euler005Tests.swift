import Testing

@testable import Euler

/// Unit test for fifth Euler problem.
public class Euler005Tests {

  /// Test solution.
  @Test(
    "The smallest positive number that is evenly divisible by all of the numbers from 1 to:",
    arguments: [
      (input: 5, expected: 60),
      (input: 7, expected: 420),
      (input: 10, expected: 2520),
      (input: 13, expected: 360360),
      (input: 20, expected: 232_792_560),
    ])
  func test(input: Int, expected: Int) throws {
    #expect(Euler005.solution(n: input) == expected)
  }

}
