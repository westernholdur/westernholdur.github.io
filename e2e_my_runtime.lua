local nk = require("nakama")
local nx = require("nakamax")
local function http_func(context, payload)
  local message = nx.json_encode(payload)
  nk.logger_info(message)
  return {["context"] = context}
end
nk.register_http(http_func, "http_func_path")