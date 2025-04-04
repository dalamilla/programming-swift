import Testing
import VaporTesting

@testable import RequestHeader

@Suite("App Tests")
struct RequestHeaderTests {
  private func withApp(_ test: (Application) async throws -> Void) async throws {
    let app = try await Application.make(.testing)
    do {
      try await configure(app)
      try await test(app)
    } catch {
      try await app.asyncShutdown()
      throw error
    }
    try await app.asyncShutdown()
  }

  @Test("Test Whoami Route")
  func whoamiTest() async throws {
    try await withApp { app in
      try await app.testing().test(
        .GET, "api/whoami",
        beforeRequest: { req in
          req.headers.add(name: "user-agent", value: "Mozilla/5.0 (X11; Linux x86_64)")
          req.headers.add(name: "accept-language", value: "en-US,en;q=0.9")
        },
        afterResponse: { res async throws in
          #expect(res.status == .ok)

          let whoami = try res.content.decode(Whoami.self)

          #expect(whoami.ipaddress == "")
          #expect(whoami.language == "en-US,en;q=0.9")
          #expect(whoami.software == "Mozilla/5.0 (X11; Linux x86_64)")
        })
    }
  }
}
