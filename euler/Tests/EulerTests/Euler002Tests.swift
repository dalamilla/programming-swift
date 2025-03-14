import Testing

@testable import Euler

/// Unit test for second Euler problem.
public class Euler002Tests {

  /// Test solution.
  @Test(
    "The sum of even Fibonacci numbers below:",
    arguments: [
      (input: 8, expected: 10),
      (input: 10, expected: 10),
      (input: 34, expected: 44),
      (input: 60, expected: 44),
      (input: 1000, expected: 798),
      (input: 100000, expected: 60696),
      (input: 4_000_000, expected: 4_613_732),
    ])
  func test(input: Int, expected: Int) throws {
    #expect(Euler002.solution(n: input) == expected)
  }

}
