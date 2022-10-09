local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end

local list_keys = require('keybindings').treeSitterList
treesitter.setup({
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = { 
        "c", 
        "cpp", 
        "make", 
        "cmake", 
        "json", 
        "html", 
        "css", 
        "vim", 
        "lua", 
        "javascript", 
        "typescript", 
        "tsx" },
    -- 启用代码高亮模块
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = true,
        keymaps = list_keys,
    },
    indent = {
        enable = true,
    }
})
