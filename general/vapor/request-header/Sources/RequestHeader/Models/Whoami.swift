import Vapor

// struct Codable for the request response.
struct Whoami: Content {
  var ipaddress: String
  var language: String
  var software: String
}
