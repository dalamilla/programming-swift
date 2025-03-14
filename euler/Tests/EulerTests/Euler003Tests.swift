import Testing

@testable import Euler

/// Unit test for third Euler problem.
public class Euler003Tests {

  /// Test solution.
  @Test(
    "The largest prime factor of:",
    arguments: [
      (input: 2, expected: 2),
      (input: 3, expected: 3),
      (input: 5, expected: 5),
      (input: 7, expected: 7),
      (input: 8, expected: 2),
      (input: 13195, expected: 29),
      (input: 600_851_475_143, expected: 6857),
    ])
  func test(input: Int, expected: Int) throws {
    #expect(Euler003.solution(n: input) == expected)
  }

}
