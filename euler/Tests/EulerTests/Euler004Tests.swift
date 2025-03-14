import Testing

@testable import Euler

/// Unit test for fourth Euler problem.
public class Euler004Tests {

  /// Test solution.
  @Test(
    "The largest palindrome made from the product of two N-digit numbers:",
    arguments: [
      (input: 2, expected: 9009),
      (input: 3, expected: 906609),
    ])
  func test(input: Int, expected: Int) throws {
    #expect(Euler004.solution(n: input) == expected)
  }

}
