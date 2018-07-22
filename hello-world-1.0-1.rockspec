package = "hello-world"
version = "1.0-1"
supported_platforms = {"linux"}
source = {
  url = ".",
  tag = "v1.0-1"
}
description = {
  summary = "The Hello World Plugin",
  license = "Apache 2.0",
  homepage = "http",
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
    ["kong.plugins.hello-world.handler"] = "src/handler.lua",
    ["kong.plugins.hello-world.schema"] = "src/schema.lua"
  }
}
