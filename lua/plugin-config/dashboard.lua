vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_footer = { " Nothing is impossible! " }

vim.g.dashboard_custom_section = {
  a = { description = { "  New file              " }, command = 'edit new_file'},
  b = { description = { "  Recently files        " }, command = "Telescope oldfiles" },
  c = { description = { "  Find file             " }, command = 'Telescope find_files'},
  d = { description = { "  Find text             " }, command = 'Telescope live_grep'},
  e = { description = { "  Projects              " }, command = "Telescope projects" },
  f = { description = { "  Edit Projects         " }, command = "edit ~/.local/share/nvim/project_nvim/project_history", },
  z = { description = { "  Quit                  " }, command = "qall", },
}

vim.g.dashboard_custom_header = {
  [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
  [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
  [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
  [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
  [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  [[                                                   ]],
}
