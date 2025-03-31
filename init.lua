-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 设置默认终端为 PowerShell
vim.api.nvim_set_option("shell", "pwsh") -- 设置 shell 为 PowerShell
vim.api.nvim_set_option("shellcmdflag", "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command") -- PowerShell 参数
vim.api.nvim_set_option("shellquote", "") -- 禁用 shell 引号
vim.api.nvim_set_option("shellxquote", "") -- 禁用 shellxquote
vim.g.qt_gui_title = "Neovim-Qt"
vim.opt.guifont = "Consolas Nerd Font Mono:h12"

-- 增加滚动步长
vim.keymap.set("n", "<ScrollWheelDown>", "7j", { noremap = true, silent = true }) -- 鼠标向下滚动时移动 7 行
vim.keymap.set("n", "<ScrollWheelUp>", "7k", { noremap = true, silent = true }) -- 鼠标向上滚动时移动 7 行

-- 启用系统剪贴板
vim.opt.clipboard = "unnamedplus" -- 使用系统剪贴板

-- 设置 Ctrl + C/V/X/A 快捷键
vim.keymap.set("n", "<C-c>", '"+y', { noremap = true, silent = true }) -- Ctrl + C 复制
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true }) -- Ctrl + V 粘贴
vim.keymap.set("n", "<C-x>", '"+x', { noremap = true, silent = true }) -- Ctrl + X 剪切
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- Ctrl + S 保存文件
vim.keymap.set("n", "<C-a>", "<Cmd>SelectAll<CR>", { noremap = true, silent = true }) -- Ctrl + A 全选

-- 其他方便开发的配置
vim.opt.tabstop = 4 -- 设置 Tab 宽度为 4 个空格
vim.opt.shiftwidth = 4 -- 设置缩进宽度为 4 个空格
vim.opt.smartindent = true -- 智能缩进
vim.opt.wrap = true -- 自动换行
vim.opt.number = true -- 显示行号
vim.opt.swapfile = false -- 关闭交换文件
vim.opt.backup = false -- 关闭备份文件
vim.opt.undofile = true -- 开启撤销持久化
vim.opt.hlsearch = true -- 高亮搜索结果
vim.opt.incsearch = true -- 实时搜索
vim.opt.termguicolors = true -- 启用终端颜色
-- 其他方便开发的配置
vim.opt.tabstop = 4 -- 设置 Tab 宽度为 4 个空格
vim.opt.shiftwidth = 4 -- 设置缩进宽度为 4 个空格
vim.opt.smartindent = true -- 智能缩进
vim.opt.wrap = true -- 自动换行
vim.opt.number = true -- 显示行号
vim.opt.swapfile = false -- 关闭交换文件
vim.opt.backup = false -- 关闭备份文件
vim.opt.undofile = true -- 开启撤销持久化
vim.opt.hlsearch = true -- 高亮搜索结果
vim.opt.incsearch = true -- 实时搜索
vim.opt.termguicolors = true -- 启用终端颜色
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})

-- what this
vim.keymap.set("n", "<C-t>", ":terminal<CR>", { noremap = true, silent = true })
