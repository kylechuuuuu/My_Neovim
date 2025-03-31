-- vscode
-- return {
--   -- add gruvbox
--   { "Mofiqul/vscode.nvim" },
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "vscode",
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--   },
-- }
--
--
-- kanagawa

return {
  { "askfiy/visual_studio_code" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "visual_studio_code",
      transparent = true,
      icons_enabled = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {},
    },
  },
}
