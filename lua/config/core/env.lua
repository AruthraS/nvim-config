local env = vim.env

env.PATH = env.PATH .. ":/usr/local/go/bin:" .. os.getenv("HOME") .. "/go/bin"
