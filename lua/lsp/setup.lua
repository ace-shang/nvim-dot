local lsp_installer = require("nvim-lsp-installer")

local servers = {
    sumneko_lua = require("lsp.config.lua"),
    pyright = require("lsp.config.pyright"),
    -- pylsp = require("lsp.config.pylsp"),
    clangd = require("lsp.config.clangd"),
}

-- 自动安装 Language Servers
    for name, _ in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
        print("Installing " .. name)
        server:install()
        end
    end
    end

lsp_installer.on_server_ready(function(server)
    local config = servers[server.name]
    if config == nil then
        return
    end
    if config.on_setup then
        config.on_setup(server)
    else
        server:setup()
    end
end)

