local dap = require "dap"

dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = 8123,
  executable = {
    command = "js-debug-adapter",
  },
}

-- Debug configurations
local jsEcosystemDebugConfig = {
  type = "pwa-node",
  request = "launch",
  program = "${file}",
  cwd = "${workspaceFolder}",
  runtimeExecutable = "node",
}

local languageDebugConfigs = {
  ["javascript"] = jsEcosystemDebugConfig,
  ["typescript"] = jsEcosystemDebugConfig,
}

for language, configuration in ipairs(languageDebugConfigs) do
  dap.configurations[language] = configuration
end
