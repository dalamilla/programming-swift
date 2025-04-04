import Vapor

// routes of your application
func routes(_ app: Application) throws {

  app.group("api") { api in

    api.get("whoami") { req async -> Whoami in

      let ip: String = req.remoteAddress?.ipAddress ?? ""
      let lang: String = req.headers.first(name: "accept-language") ?? ""
      let software: String = req.headers.first(name: "user-agent") ?? ""

      return Whoami(ipaddress: ip, language: lang, software: software)
    }

  }
}
