import Testing

@testable import Euler

/// Unit test for first Euler problem.
public class Euler001Tests {

  /// Test solution.
  @Test(
    "The sum of multiples of 3 or 5 below:",
    arguments: [
      (input: 1000, expected: 233168),
      (input: 49, expected: 543),
      (input: 8456, expected: 16_687_353),
      (input: 19564, expected: 89_301_183),
    ])
  func test(input: Int, expected: Int) throws {
    #expect(Euler001.solution(n: input) == expected)
  }

}
