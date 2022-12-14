local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("not found lualine!")
    return 
end

lualine.setup({
    options = {
        theme = "tokyonight",
        component_separators = { left = "|", right = "|" },
        -- https://github.com/ryanoasis/powerline-extra-symbols
        section_separators = { left = " ", right = "" },
    },
    extensions = {
        "nvim-tree",
        "toggleterm"
    },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = { " ", " ", " ", " ", " ", " " },
            },
        },
        lualine_x = {
            "filesize",
            "fileformat",
            "encoding",
            "filetype",
        },
    },
})

