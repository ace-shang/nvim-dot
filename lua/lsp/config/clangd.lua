return {
    on_setup = function(server)
        server:setup({
            settings = {
                cmd = {
                    "clangd"
                },
                filetypes = {
                    "c",
                    "cpp",
                    "objc",
                    "objcpp",
                    "h",
                },
                root_dir = {
                    '.clangd',
                    '.clang-tidy',
                    'clang-format',
                    'compile_commands.json',
                    'compile_flags.txt',
                    'configure.ac',
                    '.git',
                },
                single_file_support = true,
            },
            flags = {
                debounce_text_changes = 150,
            },
            on_attach = function(client, bufnr)
                -- 禁用格式化功能，交给专门插件插件处理
                client.resolved_capabilities.document_formatting = false
                client.resolved_capabilities.document_range_formatting = false

                local function buf_set_keymap(...)
                    vim.api.nvim_buf_set_keymap(bufnr, ...)
                end

                require("aerial").on_attach(client, bufnr)

                -- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
                -- 绑定快捷键
                require("keybindings").mapLSP(buf_set_keymap)
            end,
        })
    end,
}
