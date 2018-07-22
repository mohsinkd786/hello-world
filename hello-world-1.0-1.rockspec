package = "hello-world"
version = "1.0-1"
supported_platforms = {"linux"}
source = {
  url = "git://github.com/mohsinkd786/hello-world"
}
description = {
  summary = "The Hello World Plugin",
  license = "Mastek",
  homepage = "https://github.com/mohsinkd786/hello-world",
  detailed = [[
      An example Hello World plugin. Bootstrap your plugin development.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hello-world.handler"] = "handler.lua",
    ["kong.plugins.hello-world.schema"] = "schema.lua"
  }
}
