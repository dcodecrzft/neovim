vim.opt.rnu = true
vim.opt.nu = true
vim.opt.tgc = true
vim.opt.cursorline = true
vim.o.backup = false
vim.bo.swapfile = false 
vim.opt.incsearch = true
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.o.errorbells = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff =  8
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.cmd [[set iskeyword+=-]] --vim.cmd [[ foo ]] passes a viml string.


-- Colorscheme. 
vim.cmd[[colorscheme dracula]]
vim.g.dracula_colors = {
  bg = "#282A36",
  fg = "#F8F8F2",
  selection = "#44475A",
  comment = "#6272A4",
  red = "#FF5555",
  orange = "#FFB86C",
  yellow = "#F1FA8C",
  green = "#50fa7b",
  purple = "#BD93F9",
  cyan = "#8BE9FD",
  pink = "#FF79C6",
  bright_red = "#FF6E6E",
  bright_green = "#69FF94",
  bright_yellow = "#FFFFA5",
  bright_blue = "#D6ACFF",
  bright_magenta = "#FF92DF",
  bright_cyan = "#A4FFFF",
  bright_white = "#FFFFFF",
  menu = "#21222C",
  visual = "#3E4452",
  gutter_fg = "#4B5263",
  nontext = "#3B4048",
}

-- show the '~' characters after the end of buffers
vim.g.dracula_show_end_of_buffer = false
-- use transparent background
vim.g.dracula_transparent_bg = false
-- set custom lualine background color
vim.g.dracula_lualine_bg_color = "#44475a"
-- set italic comment
vim.g.dracula_italic_comment = true
